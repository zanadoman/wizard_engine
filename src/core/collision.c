#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include "../inc/WZE/WZE_core.h"

typedef enum CollisionDirection
{
    CD_NONE = 0b0000,
    CD_TOP = 0b0001,
    CD_BOT = 0b0010,
    CD_LEFT = 0b0100,
    CD_RIGHT = 0b1000,
    CD_TOP_LEFT = CD_TOP | CD_LEFT,
    CD_TOP_RIGHT = CD_TOP | CD_RIGHT,
    CD_BOT_LEFT = CD_BOT | CD_LEFT,
    CD_BOT_RIGHT = CD_BOT | CD_RIGHT,
} CollisionDirection_t;

bool validateCollision(const CollisionBox_t *box1,
                       const CollisionBox_t *box2)
{
    if (box1->m_curBotRightX <= box2->m_curTopLeftX ||
        box2->m_curBotRightX <= box1->m_curTopLeftX ||
        box1->m_curTopLeftY <= box2->m_curBotRightY ||
        box2->m_curTopLeftY <= box1->m_curBotRightY)
    {
        return false;
    }

    if (box1->m_prvBotRightX <= box2->m_prvTopLeftX ||
        box2->m_prvBotRightX <= box1->m_prvTopLeftX ||
        box1->m_prvTopLeftY <= box2->m_prvBotRightY ||
        box2->m_prvTopLeftY <= box1->m_prvBotRightY)
    {
        return true;
    }

    return false;
}

CollisionDirection_t getCollisionDirection(const CollisionBox_t *box1,
                                           const CollisionBox_t *box2)
{
    if (!validateCollision(box1, box2))
    {
        return CD_NONE;
    }

    if (box2->m_curTopLeftX < box1->m_prvTopLeftX &&
        box1->m_prvTopLeftY < box2->m_curTopLeftY)
    {
        if (box1->m_prvTopLeftX <= box2->m_curBotRightX)
        {
            return CD_TOP;
        }
        if (box2->m_curBotRightY <= box1->m_prvTopLeftY)
        {
            return CD_LEFT;
        }
        if (box2->m_curBotRightX - box1->m_curTopLeftX >
            box1->m_curTopLeftY - box2->m_curBotRightY)
        {
            return CD_TOP;
        }
    }

    return CD_NONE;
}

bool resolveCollision(CollisionBox_t *box1, CollisionBox_t *box2)
{
    CollisionDirection_t direction;

    direction = getCollisionDirection(box1, box2);

    if (CD_NONE == direction)
    {
        return false;
    }

    return false;
}

void resolveCollisionLayer(CollisionBox_t *root,
                           CollisionBox_t *boxes[], size_t size)
{
    uint_fast64_t i, forceRequirement;
    CollisionBox_t **cache;

    i = 0;
    forceRequirement = 0;
    cache = NULL;

    for (CollisionBox_t *next = *boxes; next < *boxes + size; next++)
    {
        if (next != root && validateCollision(root, next))
        {
            if (!(cache = realloc(cache, sizeof(CollisionBox_t*) * (i + 1))))
            {
                exit(1);
            }
        }
    }
}
