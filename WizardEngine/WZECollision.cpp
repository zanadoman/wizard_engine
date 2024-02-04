#include "WizardEngine.hpp"

namespace wze
{
    bool engine::collision::CheckCollision(actors::actor* Actor1, actors::actor* Actor2)
    {
        uint8 direction;

        double Actor1TopLeftX;
        double Actor1TopLeftY;
        double Actor1BotRightX;
        double Actor1BotRightY;

        double Actor2TopLeftX;
        double Actor2TopLeftY;
        double Actor2BotRightX;
        double Actor2BotRightY;

        Actor1TopLeftX = Actor1->X - Actor1->HitboxWidth / 2.0;
        Actor1TopLeftY = Actor1->Y + Actor1->HitboxHeight / 2.0;
        Actor1BotRightX = Actor1TopLeftX + Actor1->HitboxWidth;
        Actor1BotRightY = Actor1TopLeftY - Actor1->HitboxHeight;

        Actor2TopLeftX = Actor2->X - Actor2->HitboxWidth / 2.0;
        Actor2TopLeftY = Actor2->Y + Actor2->HitboxHeight / 2.0;
        Actor2BotRightX = Actor2TopLeftX + Actor2->HitboxWidth;
        Actor2BotRightY = Actor2TopLeftY - Actor2->HitboxHeight;

        if (Actor1BotRightX < Actor2TopLeftX || Actor2BotRightX < Actor1TopLeftX || Actor1TopLeftY < Actor2BotRightY || Actor2TopLeftY < Actor1BotRightY)
        {
            printf("skip");
            return false;
        }

        direction = NONE;

        if (((Actor1TopLeftX <= Actor2BotRightX && Actor2BotRightX <= Actor1BotRightX) && (Actor1BotRightY <= Actor2BotRightY && Actor2BotRightY <= Actor1TopLeftY)) || ((Actor2TopLeftX <= Actor1TopLeftX && Actor1TopLeftX <= Actor2BotRightX) && (Actor2BotRightY <= Actor1TopLeftY && Actor1TopLeftY <= Actor2TopLeftY)))
        {
            direction |= TOP_LEFT;
        }
        if (((Actor1TopLeftX <= Actor2TopLeftX && Actor2TopLeftX <= Actor1BotRightX) && (Actor1BotRightY <= Actor2BotRightY && Actor2BotRightY <= Actor1TopLeftY)) || ((Actor2TopLeftX <= Actor1BotRightX && Actor1BotRightX <= Actor2BotRightX) && (Actor2BotRightY <= Actor1TopLeftY && Actor1TopLeftY <= Actor2TopLeftY)))
        {
            direction |= TOP_RIGHT;
        }
        if (((Actor1TopLeftX <= Actor2BotRightX && Actor2BotRightX <= Actor1BotRightX) && (Actor1BotRightY <= Actor2TopLeftY && Actor2TopLeftY <= Actor1TopLeftY)) || ((Actor2TopLeftX <= Actor1TopLeftX && Actor1TopLeftX <= Actor2BotRightX) && (Actor2BotRightY <= Actor1BotRightY && Actor1BotRightY && Actor2TopLeftY)))
        {
            direction |= BOT_LEFT;
        }
        if (((Actor1TopLeftX <= Actor2TopLeftX && Actor2TopLeftX <= Actor1BotRightX) && (Actor1BotRightY <= Actor2TopLeftY && Actor2TopLeftY <= Actor1TopLeftY)) || ((Actor2TopLeftX <= Actor1BotRightX && Actor1BotRightX <= Actor2BotRightX) && (Actor2BotRightY <= Actor1BotRightY && Actor1BotRightY && Actor2TopLeftY)))
        {
            direction |= BOT_RIGHT;
        }

        switch(direction)
        {
            case TOP_LEFT:
                printf("top left\n");
            break;

            case TOP_RIGHT:
                printf("top right\n");
            break;

            case BOT_LEFT:
                printf("bot left\n");
            break;

            case BOT_RIGHT:
                printf("bot right\n");
            break;

            case TOP_LEFT ^ TOP_RIGHT:
                printf("top\n");
            break;

            case BOT_LEFT ^ BOT_RIGHT:
                printf("bot\n");
            break;

            case TOP_LEFT ^ BOT_LEFT:
                printf("left\n");
            break;

            case TOP_RIGHT ^ BOT_RIGHT:
                printf("right\n");
            break;

            case TOP_LEFT ^ TOP_RIGHT ^ BOT_LEFT ^ BOT_RIGHT:
                printf("center\n");
            break;

            case NONE:
                printf("none\n");
            break;
        }

        return false;
    }
}