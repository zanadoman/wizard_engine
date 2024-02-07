#include "Includes/NeoTypes++.hpp"
#include "WizardEngine.hpp"
#include <initializer_list>

namespace wze
{
    engine::vector::vector(engine* Engine) : Engine(Engine) {}

    double engine::vector::Length(double X1, double Y1, double X2, double Y2)
    {
        double x, y;

        if (X1 != X1)
        {
            printf("wze::engine.vector.Length(): X1 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n", X1, Y1, X2, Y2);
            exit(1);
        }
        if (Y1 != Y1)
        {
            printf("wze::engine.vector.Length(): Y1 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n", X1, Y1, X2, Y2);
            exit(1);
        }
        if (X2 != X2)
        {
            printf("wze::engine.vector.Length(): X2 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n", X1, Y1, X2, Y2);
            exit(1);
        }
        if (Y2 != Y2)
        {
            printf("wze::engine.vector.Length(): Y2 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n", X1, Y1, X2, Y2);
            exit(1);
        }

        x = X2 - X1;
        y = Y2 - Y1;

        return sqrt((x) * (x) + (y) * (y));
    }

    double engine::vector::Angle(double X1, double Y1, double X2, double Y2)
    {
        double x, y;

        if (X1 != X1)
        {
            printf("wze::engine.vector.Angle(): X1 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n", X1, Y1, X2, Y2);
            exit(1);
        }
        if (Y1 != Y1)
        {
            printf("wze::engine.vector.Angle(): Y1 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n", X1, Y1, X2, Y2);
            exit(1);
        }
        if (X2 != X2)
        {
            printf("wze::engine.vector.Angle(): X2 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n", X1, Y1, X2, Y2);
            exit(1);
        }
        if (Y2 != Y2)
        {
            printf("wze::engine.vector.Angle(): Y2 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n", X1, Y1, X2, Y2);
            exit(1);
        }

        x = X2 - X1;
        y = Y2 - Y1;

        if (Y2 < Y1)
        {
            return 360 - acos((x) / sqrt((x) * (x) + (y) * (y))) * DEG;
        }

        return acos((x) / sqrt((x) * (x) + (y) * (y))) * DEG;
    }

    double engine::vector::TerminalX(double InitialX, double Length, double Angle)
    {
        if (InitialX != InitialX)
        {
            printf("wze::engine.vector.TerminalX(): InitialX must not be NaN\nParams: InitialX: %lf, Length: %lf, Angle: %lf\n", InitialX, Length, Angle);
            exit(1);
        }

        return InitialX + Length * cos(Angle * RAD);
    }

    double engine::vector::TerminalY(double InitialY, double Length, double Angle)
    {
        if (InitialY != InitialY)
        {
            printf("wze::engine.vector.TerminalY(): InitialY must not be NaN\nParams: InitialY: %lf, Length: %lf, Angle: %lf\n", InitialY, Length, Angle);
            exit(1);
        }

        return InitialY + Length * sin(Angle * RAD);
    }

    bool engine::vector::RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, uint16 RaySize, double SamplingStep, std::initializer_list<uint64> ActorTypeWhitelist, std::initializer_list<uint64> ActorIDBlacklist, std::initializer_list<uint64> OverlapboxTypeBlacklist)
    {
        double RayTopLeftX;
        double RayTopLeftY;
        double RayAngle;
        double RayLength;
        array<actors::actor::overlapboxes::overlapbox*> cache(this->Engine->Collision.BufferSize);
        uint64 i;

        if (InitialX != InitialX)
        {
            printf("whe::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size());
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("whe::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size());
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("whe::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size());
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("whe::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size());
            exit(1);
        }
        if (SamplingStep != SamplingStep)
        {
            printf("whe::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size());
            exit(1);
        }
        if (SamplingStep <= 0)
        {
            printf("whe::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size());
            exit(1);
        }

        if (InitialX == TerminalX && InitialY == TerminalY)
        {
            return true;
        }

        i = 0;
        for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
        {
            if (this->Engine->Actors.Actors[j] == NULL || !initializer_list_Contains(ActorTypeWhitelist, {this->Engine->Actors.Actors[j]->Type}) || initializer_list_Contains(ActorIDBlacklist, {j}))
            {
                continue;
            }

            for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes.Length(); k++)
            {
                if (this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k] == NULL || initializer_list_Contains(OverlapboxTypeBlacklist, {this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k]->Type}))
                {
                    continue;
                }

                if (i == cache.Length())
                {
                    cache.Insert(cache.Length(), 1 + this->Engine->Collision.BufferSize);
                }

                cache[i++] = this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k];
            }
        }

        RayTopLeftX = InitialX - (RaySize >> 1);
        RayTopLeftY = InitialY + (RaySize >> 1);
        RayAngle = this->Angle(InitialX, InitialY, TerminalX, TerminalY);
        RayLength = this->Length(InitialX, InitialY, TerminalX, TerminalY);

        while (0 < RayLength)
        {
            for (uint64 j = 0; j < i; j++)
            {
                if (this->Engine->Collision.CheckOverlap(RayTopLeftX, RayTopLeftY, RayTopLeftX + RaySize, RayTopLeftY - RaySize, cache[j]))
                {
                    return false;
                }
            }

            RayTopLeftX += SamplingStep * cos(RayAngle * RAD);
            RayTopLeftY += SamplingStep * sin(RayAngle * RAD);
            RayLength -= SamplingStep;
        }

        return true;
    }
}