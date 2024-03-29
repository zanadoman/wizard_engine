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

bool validate_collision(const struct CollisionBox *box1,
                        const struct CollisionBox *box2)
{
    if (box1->m_curBotRightX < box2->m_curTopLeftX ||
        box2->m_curBotRightX < box1->m_curTopLeftX ||
        box1->m_curTopLeftY < box2->m_curBotRightY ||
        box2->m_curTopLeftY < box1->m_curBotRightY)
    {
        return false;
    }

    if (box1->m_prvBotRightX < box2->m_prvTopLeftX ||
        box2->m_prvBotRightX < box1->m_prvTopLeftX ||
        box1->m_prvTopLeftY < box2->m_prvBotRightY ||
        box2->m_prvTopLeftY < box1->m_prvBotRightY)
    {
        return true;
    }

    return false;
}

enum Direction get_collision_direction(struct CollisionBox *box1,
                                       struct CollisionBox *box2)
{
    if (!validate_collision(box1, box2))
    {
        return DIR_NONE;
    }

    return DIR_NONE;
}

bool resolve_collision(struct CollisionBox *box1, struct CollisionBox *box2)
{
    enum Direction direction;

    direction = get_collision_direction(box1, box2);

    if (DIR_NONE == direction)
    {
        return false;
    }

    return false;
}

void wze_resolve_collision_layer(struct CollisionBox *boxes[], size_t size)
{

}
