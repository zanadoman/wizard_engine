/*
 * This file is part of Wizard Engine (https://github.com/zanadoman/Wizard-Engine).
 * Copyright (c) 2024 Zana Domán.
 *
 * Wizard Engine is free software: you can redistribute it and/or modify  
 * it under the terms of the GNU General Public License as published by  
 * the Free Software Foundation, version 3.
 *
 * Wizard Engine is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with Wizard Engine. If not, see https://www.gnu.org/licenses/licenses.html.
 */

#include "collision.h"
#include "def.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define BUFF_SIZE 128

typedef struct ColliderBox box_t;

typedef enum Direction
{
    DIR_NONE = 0b0000'0000,
    DIR_TOP = 0b0000'0001,
    DIR_BOT = 0b0000'0010,
    DIR_LEFT = 0b0000'0100,
    DIR_RIGHT = 0b0000'1000,
    DIR_TOP_LEFT = DIR_TOP | DIR_LEFT,
    DIR_TOP_RIGHT = DIR_TOP | DIR_RIGHT,
    DIR_BOT_LEFT = DIR_BOT | DIR_LEFT,
    DIR_BOT_RIGHT = DIR_BOT | DIR_RIGHT,
} dir_t;

// Invalid if box1 not currently colliding with box2
// Valid if box1 previously not collided with box2

#define ValidateCollision(box1, box2) ( \
    ((box2)->cur_br_x <= (box1)->cur_tl_x || \
     (box1)->cur_br_x <= (box2)->cur_tl_x || \
     (box2)->cur_tl_y <= (box1)->cur_br_y || \
     (box1)->cur_tl_y <= (box2)->cur_br_y) \
        ? false \
        : ((box2)->cur_br_x <= (box1)->prv_tl_x || \
           (box1)->prv_br_x <= (box2)->cur_tl_x || \
           (box2)->cur_tl_y <= (box1)->prv_br_y || \
           (box1)->prv_tl_y <= (box2)->cur_br_y) \
              ? true \
              : false \
)

static dir_t GetDirection(const box_t *box1, const box_t *box2)
{
    if (ValidateCollision(box1, box2))
    {
        // Orthogonal collision

        if (box1->prv_tl_x < box2->cur_br_x && box2->cur_tl_x < box1->prv_br_x)
        {
            if (box1->prv_tl_y <= box2->cur_br_y)
            {
                return DIR_TOP;
            }
            if (box2->cur_tl_y <= box1->prv_br_y)
            {
                return DIR_BOT;
            }

            return DIR_NONE;
        }

        if (box1->prv_br_y < box2->cur_tl_y && box2->cur_br_y < box1->prv_tl_y)
        {
            if (box1->prv_br_x <= box2->cur_tl_x)
            {
                return DIR_LEFT;
            }
            if (box2->cur_br_x <= box1->prv_tl_x)
            {
                return DIR_RIGHT;
            }

            return DIR_NONE;
        }

        // Diagonal collision

        if (box1->prv_tl_y <= box2->cur_br_y)
        {
            if (box2->cur_br_x <= box1->prv_tl_x)
            {
                register float h_diff = box2->cur_br_x - box1->cur_tl_x;
                register float v_diff = box1->cur_tl_y - box2->cur_br_y;

                if (v_diff < h_diff)
                {
                    return DIR_TOP;
                }
                if (h_diff < v_diff)
                {
                    return DIR_LEFT;
                }

                return DIR_TOP_LEFT;
            }

            if (box1->prv_br_x <= box2->cur_tl_x)
            {
                register float h_diff = box1->cur_br_x - box2->cur_tl_x;
                register float v_diff = box1->cur_tl_y - box2->cur_br_y;

                if (v_diff < h_diff)
                {
                    return DIR_TOP;
                }
                if (h_diff < v_diff)
                {
                    return DIR_RIGHT;
                }

                return DIR_TOP_RIGHT;
            }

            return DIR_NONE;
        }


        if (box2->cur_tl_y <= box1->prv_br_y)
        {
            if (box2->cur_br_x <= box1->prv_tl_x)
            {
                register float h_diff = box2->cur_br_x - box1->cur_tl_x;
                register float v_diff = box2->cur_tl_y - box1->cur_br_y;

                if (v_diff < h_diff)
                {
                    return DIR_BOT;
                }
                if (h_diff < v_diff)
                {
                    return DIR_LEFT;
                }

                return DIR_BOT_LEFT;
            }

            if (box1->prv_br_x <= box2->cur_tl_x)
            {
                register float h_diff = box1->cur_br_x - box2->cur_tl_x;
                register float v_diff = box2->cur_tl_y - box1->cur_br_y;

                if (v_diff < h_diff)
                {
                    return DIR_BOT;
                }
                if (h_diff < v_diff)
                {
                    return DIR_RIGHT;
                }

                return DIR_BOT_RIGHT;
            }

            return DIR_NONE;
        }
    }

    return DIR_NONE;
}

INLINE void ApplyStaticCollision(box_t *box1, const box_t *box2)
{
    register float diff;

    switch (GetDirection(box1, box2))
    {
        case DIR_TOP_LEFT:
            diff = box2->cur_br_x - box1->cur_tl_x;
            box1->cur_tl_x += diff;
            box1->cur_br_x += diff;

        case DIR_TOP:
            diff = box1->cur_tl_y - box2->cur_br_y;
            box1->cur_tl_y -= diff;
            box1->cur_br_y -= diff;
        break;

        case DIR_BOT_RIGHT:
            diff = box1->cur_br_x - box2->cur_tl_x;
            box1->cur_tl_x -= diff;
            box1->cur_br_x -= diff;

        case DIR_BOT:
            diff = box2->cur_tl_y - box1->cur_br_y;
            box1->cur_tl_y += diff;
            box1->cur_br_y += diff;
        break;

        case DIR_BOT_LEFT:
            diff = box2->cur_tl_y - box1->cur_br_y;
            box1->cur_tl_y += diff;
            box1->cur_br_y += diff;

        case DIR_LEFT:
            diff = box2->cur_br_x - box1->cur_tl_x;
            box1->cur_tl_x += diff;
            box1->cur_br_x += diff;
        break;

        case DIR_TOP_RIGHT:
            diff = box1->cur_tl_y - box2->cur_br_y;
            box1->cur_tl_y -= diff;
            box1->cur_br_y -= diff;

        case DIR_RIGHT:
            diff = box1->cur_br_x - box2->cur_tl_x;
            box1->cur_tl_x -= diff;
            box1->cur_br_x -= diff;
        break;

        case DIR_NONE: 
        break;
    }
}

static bool ApplyDynamicCollision(box_t *box1, box_t *box2, const uint16_t rem_force)
{
    uint32_t box1_force;
    float ratio1, ratio2, base_diff, real_diff;

    box1_force = box2->drag + rem_force;
    ratio1 = 1 - (ratio2 = (float)box1_force / (box1_force + box2->drag));

    switch (GetDirection(box1, box2))
    {
        case DIR_TOP_LEFT:
            base_diff = box2->cur_br_x - box1->cur_tl_x;

            real_diff = base_diff * ratio1;
            box1->cur_tl_x += real_diff;
            box1->cur_br_x += real_diff;
            
            real_diff = base_diff * ratio2;
            box2->cur_tl_x -= real_diff;
            box2->cur_br_x -= real_diff;

        case DIR_TOP:
            base_diff = box1->cur_tl_y - box2->cur_br_y;

            real_diff = base_diff * ratio1;
            box1->cur_tl_y -= real_diff;
            box1->cur_br_y -= real_diff;

            real_diff = base_diff * ratio2;
            box2->cur_tl_y += real_diff;
            box2->cur_br_y += real_diff;
        return true;

        case DIR_BOT_RIGHT:
            base_diff = box1->cur_br_x - box2->cur_tl_x;

            real_diff = base_diff * ratio1;
            box1->cur_tl_x -= real_diff;
            box1->cur_br_x -= real_diff;

            real_diff = base_diff * ratio2;
            box2->cur_tl_x += real_diff;
            box2->cur_br_x += real_diff;

        case DIR_BOT:
            base_diff = box2->cur_tl_y - box1->cur_br_y;

            real_diff = base_diff * ratio1;
            box1->cur_tl_y += real_diff;
            box1->cur_br_y += real_diff;

            real_diff = base_diff * ratio2;
            box2->cur_tl_y -= real_diff;
            box2->cur_br_y -= real_diff;
        return true;

        case DIR_BOT_LEFT:
            base_diff = box2->cur_tl_y - box1->cur_br_y;

            real_diff = base_diff * ratio1;
            box1->cur_tl_y += real_diff;
            box1->cur_br_y += real_diff;

            real_diff = base_diff * ratio2;
            box2->cur_tl_y -= real_diff;
            box2->cur_br_y -= real_diff;

        case DIR_LEFT:
            base_diff = box2->cur_br_x - box1->cur_tl_x;

            real_diff = base_diff * ratio1;
            box1->cur_tl_x += real_diff;
            box1->cur_br_x += real_diff;

            real_diff = base_diff * ratio2;
            box2->cur_tl_x -= real_diff;
            box2->cur_br_x -= real_diff;
        return true;

        case DIR_TOP_RIGHT:
            base_diff = box1->cur_tl_y - box2->cur_br_y;

            real_diff = base_diff * ratio1;
            box1->cur_tl_y -= real_diff;
            box1->cur_br_y -= real_diff;

            real_diff = base_diff * ratio2;
            box2->cur_tl_y += real_diff;
            box2->cur_br_y += real_diff;

        case DIR_RIGHT:
            base_diff = box1->cur_br_x - box2->cur_tl_x;

            real_diff = base_diff * ratio1;
            box1->cur_tl_x -= real_diff;
            box1->cur_br_x -= real_diff;

            real_diff = base_diff * ratio2;
            box2->cur_tl_x += real_diff;
            box2->cur_br_x += real_diff;
        return true;

        case DIR_NONE: 
        return false;
    }

    return false;
}

static void NewBranch(box_t *current, int32_t rem_force,
                      box_t *layer_begin[], box_t *layer_end[])
{
    box_t **nexts_begin, **nexts_end;
    size_t n;
    uint32_t drag_sum;

    drag_sum = 0;
    nexts_begin = NULL;
    n = 0;

    for (box_t **next = layer_begin; next != layer_end; next++, n++)
    {
        if (ValidateCollision(current, *next) && *next != current)
        {
            if (n % BUFF_SIZE == 0 && (nexts_begin = (box_t**)realloc(nexts_begin,
                                       sizeof(box_t*) * (n + BUFF_SIZE))) == NULL)
            {
                (void)fputs("core::collision: Memory allocation failed", stderr);
                exit(1);
            }

            nexts_begin[n] = *next;
            drag_sum += (*next)->drag;
        }
    }

    nexts_end = nexts_begin + n;
    rem_force -= drag_sum;

    if (0 < rem_force)
    {
        for (box_t **next = nexts_begin; next != nexts_end; next++)
        {
            if (ApplyDynamicCollision(current, *next, (uint16_t)rem_force))
            {
                NewBranch(*next, rem_force, layer_begin, layer_end);
                ApplyStaticCollision(current, *next);
            }
        }
    }
    else
    {
        for (box_t **next = nexts_begin; next != nexts_end; next++)
        {
            ApplyStaticCollision(current, *next);
        }
    }

    free(nexts_begin);
}

void ResolveCollisionLayer(box_t *root, box_t *layer_begin[], box_t *layer_end[])
{
    box_t **nexts_begin, **nexts_end;
    size_t n;
    uint32_t drag_sum;
    int32_t rem_force;

    nexts_begin = NULL;
    n = 0;
    drag_sum = 0;

    for (box_t **next = layer_begin; next != layer_end; next++, n++)
    {
        if (ValidateCollision(root, *next) && *next != root)
        {
            if (n % BUFF_SIZE == 0 && (nexts_begin = (box_t**)realloc(nexts_begin,
                                       sizeof(box_t*) * (n + BUFF_SIZE))) == NULL)
            {
                (void)fputs("core::collision: Memory allocation failed", stderr);
                exit(1);
            }
            
            nexts_begin[n] = *next;
            drag_sum += (*next)->drag;
        }
    }

    nexts_end = nexts_begin + n;
    rem_force = root->force - drag_sum;

    if (0 < rem_force)
    { 
        for (box_t **next = nexts_begin; next != nexts_end; next++)
        {
            if (ApplyDynamicCollision(root, *next, (uint16_t)rem_force))
            {
                NewBranch(*next, rem_force, layer_begin, layer_end);
                ApplyStaticCollision(root, *next);
            }
        }
    }
    else
    {
        for (box_t **next = nexts_begin; next != nexts_end; next++)
        {
            ApplyStaticCollision(root, *next);
        }
    }

    free(nexts_begin);

    for (box_t **box = layer_begin; box != layer_end; box++)
    {
        (*box)->prv_tl_x = (*box)->cur_tl_x;
        (*box)->prv_tl_y = (*box)->cur_tl_y;
        (*box)->prv_br_x = (*box)->cur_br_x;
        (*box)->prv_br_y = (*box)->cur_br_y;
    }
}
