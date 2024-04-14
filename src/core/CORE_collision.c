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

#define STDLIB_H
#define STDINT_H
#define ERRNO_H
#define CORE_COLLISION_H

#include "../../inc/WZE_CORE/WizardCore.h"

#define BUFF_SIZE 128

typedef struct ColliderBox box_t;

typedef enum Direction
{
    DIR_NONE = 0x00,
    DIR_TOP = 0x01,
    DIR_BOT = 0x02,
    DIR_LEFT = 0x04,
    DIR_RIGHT = 0x08,
    DIR_TOP_LEFT = DIR_TOP | DIR_LEFT,
    DIR_TOP_RIGHT = DIR_TOP | DIR_RIGHT,
    DIR_BOT_LEFT = DIR_BOT | DIR_LEFT,
    DIR_BOT_RIGHT = DIR_BOT | DIR_RIGHT,
} __attribute__((__packed__)) dir_t;

inline static bool ValidateCollision(register const box_t *box1, register const box_t *box2)
{
    if ((box2)->cur_br_x <= (box1)->cur_tl_x || (box1)->cur_br_x <= (box2)->cur_tl_x ||
        (box2)->cur_tl_y <= (box1)->cur_br_y || (box1)->cur_tl_y <= (box2)->cur_br_y)
    {
        return false;
    }

    if ((box2)->cur_br_x <= (box1)->prv_tl_x || (box1)->prv_br_x <= (box2)->cur_tl_x ||
        (box2)->cur_tl_y <= (box1)->prv_br_y || (box1)->prv_tl_y <= (box2)->cur_br_y)
    {
        return true;
    }

    return true;
}

inline static dir_t GetDirection(register const box_t *box1, register const box_t *box2)
{
    if (ValidateCollision(box1, box2))
    {
        if (box1->prv_tl_x < box2->cur_br_x && box2->cur_tl_x < box1->prv_br_x)
        {
            if (box1->prv_tl_y <= box2->cur_br_y)
            {
                return DIR_TOP;
            }
            else if (box2->cur_tl_y <= box1->prv_br_y)
            {
                return DIR_BOT;
            }

            return DIR_NONE;
        }
        else if (box1->prv_br_y < box2->cur_tl_y && box2->cur_br_y < box1->prv_tl_y)
        {
            if (box1->prv_br_x <= box2->cur_tl_x)
            {
                return DIR_LEFT;
            }
            else if (box2->cur_br_x <= box1->prv_tl_x)
            {
                return DIR_RIGHT;
            }

            return DIR_NONE;
        }
        else if (box1->prv_tl_y <= box2->cur_br_y)
        {
            if (box2->cur_br_x <= box1->prv_tl_x)
            {
                register const float h_diff = box2->cur_br_x - box1->cur_tl_x;
                register const float v_diff = box1->cur_tl_y - box2->cur_br_y;

                if (v_diff < h_diff)
                {
                    return DIR_TOP;
                }
                else if (h_diff < v_diff)
                {
                    return DIR_LEFT;
                }

                return DIR_TOP_LEFT;
            }
            else if (box1->prv_br_x <= box2->cur_tl_x)
            {
                register const float h_diff = box1->cur_br_x - box2->cur_tl_x;
                register const float v_diff = box1->cur_tl_y - box2->cur_br_y;

                if (v_diff < h_diff)
                {
                    return DIR_TOP;
                }
                else if (h_diff < v_diff)
                {
                    return DIR_RIGHT;
                }

                return DIR_TOP_RIGHT;
            }

            return DIR_NONE;
        }
        else if (box2->cur_tl_y <= box1->prv_br_y)
        {
            if (box2->cur_br_x <= box1->prv_tl_x)
            {
                register const float h_diff = box2->cur_br_x - box1->cur_tl_x;
                register const float v_diff = box2->cur_tl_y - box1->cur_br_y;

                if (v_diff < h_diff)
                {
                    return DIR_BOT;
                }
                else if (h_diff < v_diff)
                {
                    return DIR_LEFT;
                }

                return DIR_BOT_LEFT;
            }
            else if (box1->prv_br_x <= box2->cur_tl_x)
            {
                register const float h_diff = box1->cur_br_x - box2->cur_tl_x;
                register const float v_diff = box2->cur_tl_y - box1->cur_br_y;

                if (v_diff < h_diff)
                {
                    return DIR_BOT;
                }
                else if (h_diff < v_diff)
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

inline static void ApplyStaticCollision(register box_t *box1, register const box_t *box2,
                                 register const dir_t dir)
{
    switch (dir)
    {
        case DIR_TOP_LEFT:
        {
            register const float diff = box2->cur_br_x - box1->cur_tl_x;
            box1->cur_tl_x += diff;
            box1->cur_br_x += diff;
        }

        case DIR_TOP:
        {
            register const float diff = box1->cur_tl_y - box2->cur_br_y;
            box1->cur_tl_y -= diff;
            box1->cur_br_y -= diff;
        }
        break;

        case DIR_BOT_RIGHT:
        {
            register const float diff = box1->cur_br_x - box2->cur_tl_x;
            box1->cur_tl_x -= diff;
            box1->cur_br_x -= diff;
        }

        case DIR_BOT:
        {
            register const float diff = box2->cur_tl_y - box1->cur_br_y;
            box1->cur_tl_y += diff;
            box1->cur_br_y += diff;
        }
        break;

        case DIR_BOT_LEFT:
        {
            register const float diff = box2->cur_tl_y - box1->cur_br_y;
            box1->cur_tl_y += diff;
            box1->cur_br_y += diff;
        }

        case DIR_LEFT:
        {
            register const float diff = box2->cur_br_x - box1->cur_tl_x;
            box1->cur_tl_x += diff;
            box1->cur_br_x += diff;
        }
        break;

        case DIR_TOP_RIGHT:
        {
            register const float diff = box1->cur_tl_y - box2->cur_br_y;
            box1->cur_tl_y -= diff;
            box1->cur_br_y -= diff;
        }

        case DIR_RIGHT:
        {
            register const float diff = box1->cur_br_x - box2->cur_tl_x;
            box1->cur_tl_x -= diff;
            box1->cur_br_x -= diff;
        }
        break;

        case DIR_NONE: 
        break;
    }
}

inline static bool ApplyDynamicCollision(register box_t *box1, register box_t *box2,
                                         register const uint16_t force, 
                                         register const dir_t dir)
{
    #define GetRatio(force, drag) ((float)force / (force + drag))
    #define GetRealDiff1(base_diff, ratio) (base_diff * (1 - ratio))
    #define GetRealDiff2(base_diff, ratio) (base_diff * ratio)

    switch (dir)
    {
        case DIR_TOP_LEFT:
        {
            register const float base_diff = box2->cur_br_x - box1->cur_tl_x;
            register const float ratio = GetRatio(force, box2->drag);
            {
                register const float real_diff = GetRealDiff1(base_diff, ratio);
                box1->cur_tl_x += real_diff;
                box1->cur_br_x += real_diff;
            }
            {
                register const float real_diff = GetRealDiff2(base_diff, ratio);
                box2->cur_tl_x -= real_diff;
                box2->cur_br_x -= real_diff;
            }
        }

        case DIR_TOP:
        {
            register const float base_diff = box1->cur_tl_y - box2->cur_br_y;
            register const float ratio = GetRatio(force, box2->drag);
            {
                register const float real_diff = GetRealDiff1(base_diff, ratio);
                box1->cur_tl_y -= real_diff;
                box1->cur_br_y -= real_diff;
            }
            {
                register const float real_diff = GetRealDiff2(base_diff, ratio);
                box2->cur_tl_y += real_diff;
                box2->cur_br_y += real_diff;
            }
        }
        return true;

        case DIR_BOT_RIGHT:
        {
            register const float base_diff = box1->cur_br_x - box2->cur_tl_x;
            register const float ratio = GetRatio(force, box2->drag);
            {
                register const float real_diff = GetRealDiff1(base_diff, ratio);
                box1->cur_tl_x -= real_diff;
                box1->cur_br_x -= real_diff;
            }
            {
                register const float real_diff = GetRealDiff2(base_diff, ratio);
                box2->cur_tl_x += real_diff;
                box2->cur_br_x += real_diff;
            }
        }

        case DIR_BOT:
        {
            register const float base_diff = box2->cur_tl_y - box1->cur_br_y;
            register const float ratio = GetRatio(force, box2->drag);
            {
                register const float real_diff = GetRealDiff1(base_diff, ratio);
                box1->cur_tl_y += real_diff;
                box1->cur_br_y += real_diff;
            }
            {
                register const float real_diff = GetRealDiff2(base_diff, ratio);
                box2->cur_tl_y -= real_diff;
                box2->cur_br_y -= real_diff;
            }
        }
        return true;

        case DIR_BOT_LEFT:
        {
            register const float base_diff = box2->cur_tl_y - box1->cur_br_y;
            register const float ratio = GetRatio(force, box2->drag);
            {
                register const float real_diff = GetRealDiff1(base_diff, ratio);
                box1->cur_tl_y += real_diff;
                box1->cur_br_y += real_diff;
            }
            {
                register const float real_diff = GetRealDiff2(base_diff, ratio);
                box2->cur_tl_y -= real_diff;
                box2->cur_br_y -= real_diff;
            }
        }

        case DIR_LEFT:
        {
            register const float base_diff = box2->cur_br_x - box1->cur_tl_x;
            register const float ratio = GetRatio(force, box2->drag);
            {
                register const float real_diff = GetRealDiff1(base_diff, ratio);
                box1->cur_tl_x += real_diff;
                box1->cur_br_x += real_diff;
            }
            {
                register const float real_diff = GetRealDiff2(base_diff, ratio);
                box2->cur_tl_x -= real_diff;
                box2->cur_br_x -= real_diff;
            }
        }
        return true;

        case DIR_TOP_RIGHT:
        {
            register const float base_diff = box1->cur_tl_y - box2->cur_br_y;
            register const float ratio = GetRatio(force, box2->drag);
            {
                register const float real_diff = GetRealDiff1(base_diff, ratio);
                box1->cur_tl_y -= real_diff;
                box1->cur_br_y -= real_diff;
            }
            {
                register const float real_diff = GetRealDiff2(base_diff, ratio);
                box2->cur_tl_y += real_diff;
                box2->cur_br_y += real_diff;
            }
        }

        case DIR_RIGHT:
        {
            register const float base_diff = box1->cur_br_x - box2->cur_tl_x;
            register const float ratio = GetRatio(force, box2->drag);
            {
                register const float real_diff = GetRealDiff1(base_diff, ratio);
                box1->cur_tl_x -= real_diff;
                box1->cur_br_x -= real_diff;
            }
            {
                register const float real_diff = GetRealDiff2(base_diff, ratio);
                box2->cur_tl_x += real_diff;
                box2->cur_br_x += real_diff;
            }
        }
        return true;

        case DIR_NONE: 
        return false;
    }

    #undef GetRatio
    #undef GetRealDiff1
    #undef GetRealDiff2

    return false;
}

void NewBranch(register box_t *current, register int32_t rem_force,
               register box_t *layer_begin[], register box_t *layer_end[])
{
    register box_t **nexts_begin, **nexts_end;

    nexts_begin = nullptr;

    {
        register uint32_t drag_sum;
        register size_t n;

        drag_sum = 0;
        n = 0;

        for (register box_t **next = layer_begin; next != layer_end; next++)
        {
            if (ValidateCollision(current, *next) && *next != current)
            {
                if (n % BUFF_SIZE == 0 && (nexts_begin = (box_t**)realloc(nexts_begin,
                                           sizeof(box_t*) * (n + BUFF_SIZE))) == nullptr)
                {
                    exit(ENOMEM);
                }

                nexts_begin[n++] = *next;
                drag_sum += (*next)->drag;
            }
        }

        nexts_end = nexts_begin + n;
        rem_force -= drag_sum;
    }

    if (0 < rem_force)
    {
        for (register box_t **next = nexts_begin; next != nexts_end; next++)
        {
            if (ApplyDynamicCollision(current, *next, (*next)->drag + (uint16_t)rem_force,
                                      GetDirection(current, *next)))
            {
                NewBranch(*next, rem_force, layer_begin, layer_end);
                ApplyStaticCollision(current, *next, GetDirection(current, *next));
            }
        }
    }
    else
    {
        for (register box_t **next = nexts_begin; next != nexts_end; next++)
        {
            ApplyStaticCollision(current, *next, GetDirection(current, *next));
        }
    }

    free(nexts_begin);
}

void ResolveCollisionLayer(box_t *root, box_t *layer_begin[], box_t *layer_end[])
{
    register box_t **nexts_begin, **nexts_end;
    register int32_t rem_force;

    nexts_begin = nullptr;

    {
        register uint32_t drag_sum;
        register size_t n;

        drag_sum = 0;
        n = 0;

        for (register box_t **next = layer_begin; next != layer_end; next++)
        {
            if (ValidateCollision(root, *next) && *next != root)
            {
                if (n % BUFF_SIZE == 0 && (nexts_begin = (box_t**)realloc(nexts_begin,
                                           sizeof(box_t*) * (n + BUFF_SIZE))) == nullptr)
                {
                    exit(ENOMEM);
                }

                nexts_begin[n++] = *next;
                drag_sum += (*next)->drag;
            }
        }

        nexts_end = nexts_begin + n;
        rem_force = root->force - drag_sum;
    }

    if (0 < rem_force)
    { 
        for (register box_t **next = nexts_begin; next != nexts_end; next++)
        {
            if (ApplyDynamicCollision(root, *next, (*next)->drag + (uint16_t)rem_force,
                                      GetDirection(root, *next)))
            {
                NewBranch(*next, rem_force, layer_begin, layer_end);
                ApplyStaticCollision(root, *next, GetDirection(root, *next));
            }
        }
    }
    else
    {
        for (register box_t **next = nexts_begin; next != nexts_end; next++)
        {
            ApplyStaticCollision(root, *next, GetDirection(root, *next));
        }
    }

    free(nexts_begin);

    for (register box_t **box = layer_begin; box != layer_end; box++)
    {
        (*box)->prv_tl_x = (*box)->cur_tl_x;
        (*box)->prv_tl_y = (*box)->cur_tl_y;
        (*box)->prv_br_x = (*box)->cur_br_x;
        (*box)->prv_br_y = (*box)->cur_br_y;
    }
}
