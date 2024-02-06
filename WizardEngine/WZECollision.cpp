#include "WizardEngine.hpp"

namespace wze
{
    engine::collision::collision(engine* Engine) : Engine(Engine), CollisionLayers(256) {}

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

        if (Actor2TopLeftX < Actor1PrevTopLeftX && Actor1PrevTopLeftY < Actor2TopLeftY)
        {
            if (Actor1PrevTopLeftX <= Actor2BotRightX)
            {
                return TOP;
            }
            if (Actor2BotRightY <= Actor1PrevTopLeftY)
            {
                return LEFT;
            }
            if (Actor2BotRightX - Actor1TopLeftX > Actor1TopLeftY - Actor2BotRightY)
            {
                return TOP;
            }
            if (Actor2BotRightX - Actor1TopLeftX < Actor1TopLeftY - Actor2BotRightY)
            {
                return LEFT;
            }

            return TOP_LEFT;
        }
        if (Actor1PrevBotRightX < Actor2BotRightX && Actor1PrevTopLeftY < Actor2TopLeftY)
        {
            if (Actor2TopLeftX <= Actor1PrevBotRightX)
            {
                return TOP;
            }
            if (Actor2BotRightY <= Actor1PrevTopLeftY)
            {
                return RIGHT;
            }
            if (Actor1BotRightX - Actor2TopLeftX > Actor1TopLeftY - Actor2BotRightY)
            {
                return TOP;
            }
            if (Actor1BotRightX - Actor2TopLeftX < Actor1TopLeftY - Actor2BotRightY)
            {
                return RIGHT;
            }

            return TOP_RIGHT;
        }
        if (Actor2TopLeftX < Actor1PrevTopLeftX && Actor2BotRightY < Actor1PrevBotRightY)
        {
            if (Actor1PrevTopLeftX <= Actor2BotRightX)
            {
                return BOT;
            }
            if (Actor1PrevBotRightY <= Actor2TopLeftY)
            {
                return LEFT;
            }
            if (Actor2BotRightX - Actor1TopLeftX > Actor2TopLeftY - Actor1BotRightY)
            {
                return BOT;
            }
            if (Actor2BotRightX - Actor1TopLeftX < Actor2TopLeftY - Actor1BotRightY)
            {
                return LEFT;
            }

            return BOT_LEFT;
        }
        if (Actor1PrevBotRightX < Actor2BotRightX && Actor2BotRightY < Actor1PrevBotRightY)
        {
            if (Actor2TopLeftX <= Actor1PrevBotRightX)
            {
                return BOT;
            }
            if (Actor1PrevBotRightY <= Actor2TopLeftY)
            {
                return RIGHT;
            }
            if (Actor1BotRightX - Actor2TopLeftX > Actor2TopLeftY - Actor1BotRightY)
            {
                return BOT;
            }
            if (Actor1BotRightX - Actor2TopLeftX < Actor2TopLeftY - Actor1BotRightY)
            {
                return RIGHT;
            }

            return BOT_RIGHT;
        }

        return NONE;
    }

    bool engine::collision::ResolveCollision(actors::actor* Actor1, uint64 Actor1Force, actors::actor* Actor2)
    {
        direction Direction;
        double ratio, difference, cache;

        double Actor1TopLeftX;
        double Actor1TopLeftY;
        double Actor1BotRightX;
        double Actor1BotRightY;

        double Actor2TopLeftX;
        double Actor2TopLeftY;
        double Actor2BotRightX;
        double Actor2BotRightY;

        if ((Direction = this->GetCollisionDirection(Actor1, Actor2)) == NONE)
        {
            return false;
        }

        Actor1TopLeftX = Actor1->X - (Actor1->HitboxWidth >> 1);
        Actor1TopLeftY = Actor1->Y + (Actor1->HitboxHeight >> 1);
        Actor1BotRightX = Actor1TopLeftX + Actor1->HitboxWidth;
        Actor1BotRightY = Actor1TopLeftY - Actor1->HitboxHeight;

        Actor2TopLeftX = Actor2->X - (Actor2->HitboxWidth >> 1);
        Actor2TopLeftY = Actor2->Y + (Actor2->HitboxHeight >> 1);
        Actor2BotRightX = Actor2TopLeftX + Actor2->HitboxWidth;
        Actor2BotRightY = Actor2TopLeftY - Actor2->HitboxHeight;

        if (Actor1Force <= Actor2->Resistance)
        {
            switch (Direction)
            {
                case TOP:
                    Actor1->Y -= Actor1TopLeftY - Actor2BotRightY + EPSILON;
                return true;

                case BOT:
                    Actor1->Y += Actor2TopLeftY - Actor1BotRightY + EPSILON;
                return true;

                case LEFT:
                    Actor1->X += Actor2BotRightX - Actor1TopLeftX + EPSILON;
                return true;

                case RIGHT:
                    Actor1->X -= Actor1BotRightX - Actor2TopLeftX + EPSILON;
                return true;

                case TOP_LEFT:
                    Actor1->Y -= Actor1TopLeftY - Actor2BotRightY + EPSILON;
                    Actor1->X += Actor2BotRightX - Actor1TopLeftX + EPSILON;
                return true;

                case TOP_RIGHT:
                    Actor1->Y -= Actor1TopLeftY - Actor2BotRightY + EPSILON;
                    Actor1->X -= Actor1BotRightX - Actor2TopLeftX + EPSILON;
                return true;

                case BOT_LEFT:
                    Actor1->Y += Actor2TopLeftY - Actor1BotRightY + EPSILON;
                    Actor1->X += Actor2BotRightX - Actor1TopLeftX + EPSILON;
                return true;

                case BOT_RIGHT:
                    Actor1->Y += Actor2TopLeftY - Actor1BotRightY + EPSILON;
                    Actor1->X -= Actor1BotRightX - Actor2TopLeftX + EPSILON;
                return true;

                case NONE:
                return false;
            }
        }
        else
        {
            cache = 1 - (ratio = (double)Actor1Force / (Actor1Force + Actor2->Resistance));

            switch (Direction)
            {
                case TOP:
                    difference = (Actor1TopLeftY - Actor2BotRightY);
                    Actor1->Y -= difference * cache + EPSILON;
                    Actor2->Y += difference * ratio;
                return true;

                case BOT:
                    difference = (Actor2TopLeftY - Actor1BotRightY);
                    Actor1->Y += difference * cache + EPSILON;
                    Actor2->Y -= difference * ratio;
                return true;

                case LEFT:
                    difference = (Actor2BotRightX - Actor1TopLeftX);
                    Actor1->X += difference * cache + EPSILON;
                    Actor2->X -= difference * ratio;
                return true;

                case RIGHT:
                    difference = (Actor1BotRightX - Actor2TopLeftX);
                    Actor1->X -= difference * cache + EPSILON;
                    Actor2->X += difference * ratio;
                return true;

                case TOP_LEFT:
                    difference = (Actor1TopLeftY - Actor2BotRightY);
                    Actor1->Y -= difference * cache + EPSILON;
                    Actor2->Y += difference * ratio;

                    difference = (Actor2BotRightX - Actor1TopLeftX);
                    Actor1->X += difference * cache + EPSILON;
                    Actor2->X -= difference * ratio;
                return true;

                case TOP_RIGHT:
                    difference = (Actor1TopLeftY - Actor2BotRightY);
                    Actor1->Y -= difference * cache + EPSILON;
                    Actor2->Y += difference * ratio;

                    difference = (Actor1BotRightX - Actor2TopLeftX);
                    Actor1->X -= difference * cache + EPSILON;
                    Actor2->X += difference * ratio;
                return true;

                case BOT_LEFT:
                    difference = (Actor2TopLeftY - Actor1BotRightY);
                    Actor1->Y += difference * cache + EPSILON;
                    Actor2->Y -= difference * ratio;

                    difference = (Actor2BotRightX - Actor1TopLeftX);
                    Actor1->X += difference * cache + EPSILON;
                    Actor2->X -= difference * ratio;
                return true;

                case BOT_RIGHT:
                    difference = (Actor2TopLeftY - Actor1BotRightY);
                    Actor1->Y += difference * cache + EPSILON;
                    Actor2->Y -= difference * ratio;

                    difference = (Actor1BotRightX - Actor2TopLeftX);
                    Actor1->X -= difference * cache + EPSILON;
                    Actor2->X += difference * ratio;
                return true;

                case NONE:
                return false;
            }
        }

        return false;
    }

    uint8 engine::collision::ResolveCollisionLayer(uint64 CollisionLayer)
    {
        uint64 ForceRequirement;
        array<actors::actor*>* cache;

        cache = &this->CollisionLayers[CollisionLayer];

        for (uint64 Root = 0; Root < cache->Length(); Root++)
        {
            ForceRequirement = 0;
            for (uint64 NextBranch = 0; NextBranch < cache->Length(); NextBranch++)
            {
                if (NextBranch != Root && this->GetCollisionDirection((*cache)[Root], (*cache)[NextBranch]) != NONE)
                {
                    ForceRequirement += (*cache)[NextBranch]->Resistance;
                }
            }

            for (uint64 NextBranch = 0; NextBranch < cache->Length(); NextBranch++)
            {
                if (NextBranch != Root)
                {
                    if ((*cache)[Root]->Force <= ForceRequirement)
                    {
                        this->ResolveCollision((*cache)[Root], 0, (*cache)[NextBranch]);
                    }
                    else if (this->ResolveCollision((*cache)[Root], (*cache)[NextBranch]->Resistance + (*cache)[Root]->Force - ForceRequirement, (*cache)[NextBranch]))
                    {
                        this->NewCollisionBranch(cache, (*cache)[Root], (*cache)[Root]->Force - ForceRequirement, (*cache)[NextBranch]);
                        this->ResolveCollision((*cache)[Root], 0, (*cache)[NextBranch]);
                    }
                }
            }
        }

        for (uint64 i = 0; i < cache->Length(); i++)
        {
            (*cache)[i]->UpdateMembersPosition();

            (*cache)[i]->PrevX = (*cache)[i]->X;
            (*cache)[i]->PrevY = (*cache)[i]->Y;
            (*cache)[i]->PrevHitboxWidth = (*cache)[i]->HitboxWidth;
            (*cache)[i]->PrevHitboxHeight = (*cache)[i]->HitboxHeight;
        }

        return 0;
    }

    uint8 engine::collision::NewCollisionBranch(array<actors::actor*>* Cache, actors::actor* Root, uint64 RootForce, actors::actor* CurrentBranch)
    {
        array<actors::actor*> NextBranches(10);
        uint64 i, ForceRequirement;

        i = 0;
        ForceRequirement = 0;
        for (uint64 NextBranch = 0; NextBranch < Cache->Length(); NextBranch++)
        {
            if ((*Cache)[NextBranch] != Root && (*Cache)[NextBranch] != CurrentBranch && this->GetCollisionDirection(CurrentBranch, (*Cache)[NextBranch]) != NONE)
            {
                if (i == NextBranches.Length())
                {
                    NextBranches.Insert(NextBranches.Length(), 11);
                }

                NextBranches[i++] = (*Cache)[NextBranch];
                ForceRequirement += (*Cache)[NextBranch]->Resistance;
            }
        }

        for (uint64 NextBranch = 0; NextBranch < i; NextBranch++)
        {
            if (RootForce <= ForceRequirement)
            {
                this->ResolveCollision(CurrentBranch, 0, NextBranches[NextBranch]);
            }
            else if (this->ResolveCollision(CurrentBranch, NextBranches[NextBranch]->Resistance + RootForce - ForceRequirement, NextBranches[NextBranch]))
            {
                this->NewCollisionBranch(Cache, Root, RootForce - ForceRequirement, NextBranches[NextBranch]);
                this->ResolveCollision(CurrentBranch, 0, NextBranches[NextBranch]);
            }
        }

        return 0;
    }
}