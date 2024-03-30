#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include "../inc/WZE/WZE_core.h"

#define BUFF_SIZE 100

typedef struct ColliderBox box_t;

typedef enum
{
    DIR_NONE = 0b0000,
    DIR_TOP = 0b0001,
    DIR_BOT = 0b0010,
    DIR_LEFT = 0b0100,
    DIR_RIGHT = 0b1000,
    DIR_TOP_LEFT = DIR_TOP | DIR_LEFT,
    DIR_TOP_RIGHT = DIR_TOP | DIR_RIGHT,
    DIR_BOT_LEFT = DIR_BOT | DIR_LEFT,
    DIR_BOT_RIGHT = DIR_BOT | DIR_RIGHT,
} direction_t;

bool ValidateCollision(const box_t *box1, const box_t *box2)
{
    if (box1->cur_br_x <= box2->cur_tl_x || box2->cur_br_x <= box1->cur_tl_x ||
        box1->cur_tl_y <= box2->cur_br_y || box2->cur_tl_y <= box1->cur_br_y)
    {
        return false;
    }

    if (box1->prv_br_x <= box2->prv_tl_x || box2->prv_br_x <= box1->prv_tl_x ||
        box1->prv_tl_y <= box2->prv_br_y || box2->prv_tl_y <= box1->prv_br_y)
    {
        return true;
    }

    return false;
}

direction_t GetDirection(const box_t *box1, const box_t *box2)
{
    if (!ValidateCollision(box1, box2))
    {
        return DIR_NONE;
    }

    return DIR_NONE;
}

bool ResolveCollision(box_t *box1, uint_fast16_t box1_force, box_t *box2)
{
    direction_t direction;

    if ((direction = GetDirection(box1, box2)) == DIR_NONE)
    {
        return false;
    }

    return false;
}

void NewBranch(uint_fast16_t root_force, box_t* current, box_t *layer_begin[], box_t *layer_end[])
{
    uint_fast16_t total_drag;
    box_t **nexts;
    size_t n;

    total_drag = 0;
    nexts = NULL;
    n = 0;

    for (box_t **next = layer_begin; next < layer_end; next++)
    {
        if (*next != current && ValidateCollision(current, *next))
        {
            if (n % BUFF_SIZE == 0 && (nexts = (box_t**)realloc(nexts, sizeof(box_t*) * (n + BUFF_SIZE))) == NULL)
            {
                (void)fputs("Memory allocation failed in core::collision", stderr);
                exit(1);
            }

            total_drag = (*next)->drag;
            nexts[n++] = *next;
        }
    }

    if (total_drag < root_force)
    {
        for (box_t **next = nexts; next < nexts + n; next++)
        {
            if (ResolveCollision(current, (*next)->drag + root_force - total_drag, *next))
            {
                NewBranch(root_force - total_drag, *next, layer_begin, layer_end);
                (void)ResolveCollision(current, 0, *next);
            }
        }
    }
    else
    {
        for (box_t **next = nexts; next < nexts + n; next++)
        {
            (void)ResolveCollision(current, 0, *next);
        }
    }

    free(nexts);
}

void ResolveCollisionLayer(box_t *root, box_t *layer_begin[], box_t *layer_end[])
{
    uint_fast16_t total_drag;
    box_t **nexts;
    size_t n;

    total_drag = 0;
    nexts = NULL;
    n = 0;

    for (box_t **next = layer_begin; next < layer_end; next++)
    {
        if (*next != root && ValidateCollision(root, *next))
        {
            if (n % BUFF_SIZE == 0 && (nexts = (box_t**)realloc(nexts, sizeof(box_t*) * (n + BUFF_SIZE))) == NULL)
            {
                (void)fputs("Memory allocation failed in core::collision", stderr);
                exit(1);
            }
            
            total_drag = (*next)->drag;
            nexts[n++] = *next;
        }
    }

    if (total_drag < root->force)
    {
        for (box_t **next = nexts; next < nexts + n; next++)
        {
            if (ResolveCollision(root, (*next)->drag + root->force - total_drag, *next))
            {
                NewBranch(root->force - total_drag, *next, layer_begin, layer_end);
                (void)ResolveCollision(root, 0, *next);
            }
        }
    }
    else
    {
        for (box_t **next = nexts; next < nexts + n; next++)
        {
            (void)ResolveCollision(root, 0, *next);
        }
    }

    free(nexts);

    for (box_t **box = layer_begin; box < layer_end; box++)
    {
        (*box)->prv_tl_x = (*box)->cur_tl_x;
        (*box)->prv_tl_y = (*box)->cur_tl_y;
        (*box)->prv_br_x = (*box)->cur_br_x;
        (*box)->prv_br_y = (*box)->cur_br_y;
    }
}
