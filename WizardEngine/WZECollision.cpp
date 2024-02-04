#include "WizardEngine.hpp"

namespace wze
{
    engine::collision::collision(engine* Engine) : Engine(Engine) {}

    bool engine::collision::CheckCollision(double Actor1TopLeftX, double Actor1TopLeftY, double Actor1BotRightX, double Actor1BotRightY, double Actor2TopLeftX, double Actor2TopLeftY, double Actor2BotRightX, double Actor2BotRightY)
    {
        if (Actor1BotRightX < Actor2TopLeftX || Actor2BotRightX < Actor1TopLeftX || Actor1TopLeftY < Actor2BotRightY || Actor2TopLeftY < Actor1BotRightY)
        {
            return false;
        }

        if (((Actor1TopLeftX <= Actor2BotRightX && Actor2BotRightX <= Actor1BotRightX) && (Actor1BotRightY <= Actor2BotRightY && Actor2BotRightY <= Actor1TopLeftY)) || ((Actor2TopLeftX <= Actor1TopLeftX && Actor1TopLeftX <= Actor2BotRightX) && (Actor2BotRightY <= Actor1TopLeftY && Actor1TopLeftY <= Actor2TopLeftY)))
        {
            return true;
        }
        if (((Actor1TopLeftX <= Actor2TopLeftX && Actor2TopLeftX <= Actor1BotRightX) && (Actor1BotRightY <= Actor2BotRightY && Actor2BotRightY <= Actor1TopLeftY)) || ((Actor2TopLeftX <= Actor1BotRightX && Actor1BotRightX <= Actor2BotRightX) && (Actor2BotRightY <= Actor1TopLeftY && Actor1TopLeftY <= Actor2TopLeftY)))
        {
            return true;
        }
        if (((Actor1TopLeftX <= Actor2BotRightX && Actor2BotRightX <= Actor1BotRightX) && (Actor1BotRightY <= Actor2TopLeftY && Actor2TopLeftY <= Actor1TopLeftY)) || ((Actor2TopLeftX <= Actor1TopLeftX && Actor1TopLeftX <= Actor2BotRightX) && (Actor2BotRightY <= Actor1BotRightY && Actor1BotRightY <= Actor2TopLeftY)))
        {
            return true;
        }
        if (((Actor1TopLeftX <= Actor2TopLeftX && Actor2TopLeftX <= Actor1BotRightX) && (Actor1BotRightY <= Actor2TopLeftY && Actor2TopLeftY <= Actor1TopLeftY)) || ((Actor2TopLeftX <= Actor1BotRightX && Actor1BotRightX <= Actor2BotRightX) && (Actor2BotRightY <= Actor1BotRightY && Actor1BotRightY <= Actor2TopLeftY)))
        {
            return true;
        }

        return false;
    }

    engine::collision::direction engine::collision::GetCollisionDirection(actors::actor* Actor1, actors::actor* Actor2)
    {
        double Actor1PrevTopLeftX;
        double Actor1PrevTopLeftY;
        double Actor1PrevBotRightX;
        double Actor1PrevBotRightY;

        double Actor1TopLeftX;
        double Actor1TopLeftY;
        double Actor1BotRightX;
        double Actor1BotRightY;

        double Actor2TopLeftX;
        double Actor2TopLeftY;
        double Actor2BotRightX;
        double Actor2BotRightY;

        Actor1PrevTopLeftX = Actor1->PrevX - (Actor1->PrevHitboxWidth >> 1);
        Actor1PrevTopLeftY = Actor1->PrevY + (Actor1->PrevHitboxHeight >> 1);
        Actor1PrevBotRightX = Actor1PrevTopLeftX + Actor1->PrevHitboxWidth;
        Actor1PrevBotRightY = Actor1PrevTopLeftY - Actor1->PrevHitboxHeight;

        Actor1TopLeftX = Actor1->X - (Actor1->HitboxWidth >> 1);
        Actor1TopLeftY = Actor1->Y + (Actor1->HitboxHeight >> 1);
        Actor1BotRightX = Actor1TopLeftX + Actor1->HitboxWidth;
        Actor1BotRightY = Actor1TopLeftY - Actor1->HitboxHeight;

        Actor2TopLeftX = Actor2->X - (Actor2->HitboxWidth >> 1);
        Actor2TopLeftY = Actor2->Y + (Actor2->HitboxHeight >> 1);
        Actor2BotRightX = Actor2TopLeftX + Actor2->HitboxWidth;
        Actor2BotRightY = Actor2TopLeftY - Actor2->HitboxHeight;

        if (this->CheckCollision(Actor1PrevTopLeftX, Actor1PrevTopLeftY, Actor1PrevBotRightX, Actor1PrevBotRightY, Actor2TopLeftX, Actor2TopLeftY, Actor2BotRightX, Actor2BotRightY))
        {
            return NONE;
        }

        if (!this->CheckCollision(Actor1TopLeftX, Actor1TopLeftY, Actor1BotRightX, Actor1BotRightY, Actor2TopLeftX, Actor2TopLeftY, Actor2BotRightX, Actor2BotRightY))
        {
            return NONE;
        }

        if ((Actor2TopLeftX <= Actor1PrevTopLeftX && Actor1PrevBotRightX <= Actor2BotRightX) || (Actor1PrevTopLeftX <= Actor2TopLeftX && Actor2BotRightX <= Actor1PrevBotRightX))
        {
            if (Actor1PrevTopLeftY < Actor2BotRightY)
            {
                return TOP;
            }
            if (Actor2TopLeftY < Actor1PrevBotRightY)
            {    
                return BOT;
            }
        }
        if ((Actor2BotRightY <= Actor1PrevBotRightY && Actor1PrevTopLeftY <= Actor2TopLeftY) || (Actor1PrevBotRightY <= Actor2BotRightY && Actor2TopLeftY <= Actor1PrevTopLeftY))
        {
            if (Actor2BotRightX < Actor1PrevTopLeftX)
            {
                return LEFT;
            }
            if (Actor1PrevBotRightX < Actor2TopLeftX)
            {
                return RIGHT;
            }
        }

        if (Actor2TopLeftX < Actor1PrevTopLeftX && Actor2TopLeftY < Actor1PrevTopLeftY)
        {
            if (Actor1PrevTopLeftX <= Actor2BotRightX)
            {
                return TOP;
            }
            if (Actor1PrevTopLeftY <= Actor2BotRightY)
            {
                return LEFT;
            }
            if (Actor2BotRightX - Actor1TopLeftX > Actor2BotRightY - Actor1TopLeftY)
            {
                return TOP;
            }
            if (Actor2BotRightX - Actor1TopLeftX < Actor2BotRightY - Actor1TopLeftY)
            {
                return LEFT;
            }

            return TOP_LEFT;
        }
        if (Actor1PrevBotRightX < Actor2BotRightX && Actor2TopLeftY < Actor1PrevTopLeftY)
        {
            if (Actor2TopLeftX <= Actor1PrevBotRightX)
            {
                return TOP;
            }
            if (Actor1PrevTopLeftY <= Actor2BotRightY)
            {
                return RIGHT;
            }
            if (Actor1BotRightX - Actor2TopLeftX > Actor2BotRightY - Actor1TopLeftY)
            {
                return TOP;
            }
            if (Actor1BotRightX - Actor2TopLeftX < Actor2BotRightY - Actor1TopLeftY)
            {
                return RIGHT;
            }

            return TOP_RIGHT;
        }
        if (Actor2TopLeftX < Actor1PrevTopLeftX && Actor1PrevBotRightY < Actor2BotRightY)
        {
            if (Actor1PrevTopLeftX <= Actor2BotRightX)
            {
                return BOT;
            }
            if (Actor2TopLeftY <= Actor1PrevBotRightY)
            {
                return LEFT;
            }
            if (Actor2BotRightX - Actor1TopLeftX > Actor1BotRightY - Actor2TopLeftY)
            {
                return BOT;
            }
            if (Actor2BotRightX - Actor1TopLeftX < Actor1BotRightY - Actor2TopLeftY)
            {
                return LEFT;
            }

            return BOT_LEFT;
        }
        if (Actor1PrevBotRightX < Actor2BotRightX && Actor1PrevBotRightY < Actor2BotRightY)
        {
            if (Actor2TopLeftX <= Actor1PrevBotRightX)
            {
                return BOT;
            }
            if (Actor2TopLeftY <= Actor1PrevBotRightY)
            {
                return RIGHT;
            }
            if (Actor1BotRightX - Actor2TopLeftX > Actor1BotRightY - Actor2TopLeftY)
            {
                return BOT;
            }
            if (Actor1BotRightX - Actor2TopLeftX < Actor1BotRightY - Actor2TopLeftY)
            {
                return RIGHT;
            }

            return BOT_RIGHT;
        }

        return NONE;
    }
}