#include <stdbool.h>
#include <stddef.h>
#include "core.h"

enum Direction
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
};

bool validate_collision(const struct collision_box_base *box1,
                        const struct collision_box_base *box2)
{
    if (box1->bot_right.x < box2->top_left.x ||
        box2->bot_right.x < box1->top_left.x ||
        box1->top_left.y < box2->bot_right.y ||
        box2->top_left.y < box1->bot_right.y)
    {
        return false;
    }

    if (box1->prev_bot_right.x < box2->top_left.x ||
        box2->bot_right.x < box1->prev_top_left.x ||
        box1->prev_top_left.y < box2->bot_right.y ||
        box2->top_left.y < box1->prev_bot_right.y)
    {
        return true;
    }

    return false;
}

enum Direction get_collision_direction(struct collision_box_base *box1,
                                       struct collision_box_base *box2)
{
    if (!validate_collision(box1, box2))
    {
        return DIR_NONE;
    }

    return DIR_NONE;
}

bool resolve_collision(struct collision_box_base *box1,
                       struct collision_box_base *box2)
{
    enum Direction direction;

    direction = get_collision_direction(box1, box2);

    if (DIR_NONE == direction)
    {
        return false;
    }

    return false;
}

void resolve_collision_layer(struct collision_box_base *boxes, size_t count)
{

}
