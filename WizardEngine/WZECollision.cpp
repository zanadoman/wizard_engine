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

        

        printf("none2\n");
        return false;
    }
}