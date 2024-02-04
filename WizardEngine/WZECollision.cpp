#include "WizardEngine.hpp"

namespace wze
{
    bool engine::collision::CheckCollision(actors::actor* Actor1, actors::actor* Actor2)
    {
        double Actor1TopLeftX;
        double Actor1TopLeftY;
        double Actor1BotRightX;
        double Actor1BotRightY;

        double Actor2TopLeftX;
        double Actor2TopLeftY;
        double Actor2BotRightX;
        double Actor2BotRightY;

        Actor1TopLeftX = Actor1->X - (Actor1->HitboxWidth >> 2);
        Actor1TopLeftY = Actor1->Y + (Actor1->HitboxHeight >> 2);
        Actor1BotRightX = Actor1TopLeftX + Actor1->HitboxWidth;
        Actor1BotRightY = Actor1TopLeftY - Actor1->HitboxHeight;

        Actor2TopLeftX = Actor2->X - (Actor2->HitboxWidth >> 2);
        Actor2TopLeftY = Actor2->Y + (Actor2->HitboxHeight >> 2);
        Actor2BotRightX = Actor2TopLeftX + Actor2->HitboxWidth;
        Actor2BotRightY = Actor2TopLeftY - Actor2->HitboxHeight;

        if (Actor1BotRightX < Actor2TopLeftX || Actor2BotRightX < Actor1TopLeftX || Actor1BotRightY < Actor2TopLeftY || Actor2BotRightY < Actor1TopLeftY)
        {
            printf("none\n");
            return false;
        }

        if (((Actor1TopLeftX <= Actor2BotRightX && Actor2BotRightX <= Actor1BotRightX) && (Actor1TopLeftY <= Actor2BotRightY && Actor2BotRightY <= Actor1BotRightY)) || ((Actor2TopLeftX <= Actor1TopLeftX && Actor1TopLeftX <= Actor2BotRightX) && (Actor2TopLeftY <= Actor1TopLeftY && Actor1TopLeftY <= Actor2BotRightY)))
        {
            printf("top left\n");
            return true; //top left
        }
        if (((Actor1TopLeftX <= Actor2TopLeftX && Actor2TopLeftX <= Actor1BotRightX) && (Actor1TopLeftY <= Actor2BotRightY && Actor2BotRightY <= Actor1BotRightY)) || ((Actor2TopLeftX <= Actor1BotRightX && Actor1BotRightX <= Actor2BotRightX) && (Actor2TopLeftY <= Actor1TopLeftY && Actor1TopLeftY <= Actor2BotRightY)))
        {
            printf("top right\n");
            return true; //top right
        }
        if (((Actor1TopLeftX <= Actor2BotRightX && Actor2BotRightX <= Actor1BotRightX) && (Actor1TopLeftY <= Actor2TopLeftY && Actor2TopLeftY <= Actor1BotRightY)) || ((Actor2TopLeftX <= Actor1TopLeftX && Actor1TopLeftX <= Actor2BotRightX) && (Actor2TopLeftY <= Actor1BotRightY && Actor1BotRightY <= Actor2BotRightY)))
        {
            printf("bot left\n");
            return true; //bottom left
        }
        if (((Actor1TopLeftX <= Actor2TopLeftX && Actor2TopLeftX <= Actor1BotRightX) && (Actor1TopLeftY <= Actor2TopLeftY && Actor2TopLeftY <= Actor1BotRightY)) || ((Actor2TopLeftX <= Actor1BotRightX && Actor1BotRightX <= Actor2BotRightX) && (Actor2TopLeftY <= Actor1BotRightY && Actor1BotRightY <= Actor2BotRightY)))
        {
            printf("bit right\n");
            return true; //bottom right
        }

        printf("none\n");
        return false;
    }
}