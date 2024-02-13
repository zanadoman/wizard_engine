#include "WizardEngine.hpp"
#include <cmath>

using namespace neo;

namespace wze
{
    engine::vector::vector(engine* Engine) : Engine(Engine) {}

    double engine::vector::Length(double InitialX, double InitialY, double TerminalX, double TerminalY)
    {
        double x, y;

        if (InitialX != InitialX)
        {
            printf("wze::engine::vector::Length(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n", InitialX, InitialY, TerminalX, TerminalY);
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine::vector::Length(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n", InitialX, InitialY, TerminalX, TerminalY);
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine::vector::Length(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n", InitialX, InitialY, TerminalX, TerminalY);
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine::vector::Length(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n", InitialX, InitialY, TerminalX, TerminalY);
            exit(1);
        }

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;

        return sqrt(x * x + y * y);
    }

    double engine::vector::Angle(double InitialX, double InitialY, double TerminalX, double TerminalY)
    {
        double x, y;

        if (InitialX != InitialX)
        {
            printf("wze::engine::vector::Angle(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n", InitialX, InitialY, TerminalX, TerminalY);
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine::vector::Angle(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n", InitialX, InitialY, TerminalX, TerminalY);
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine::vector::Angle(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n", InitialX, InitialY, TerminalX, TerminalY);
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine::vector::Angle(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n", InitialX, InitialY, TerminalX, TerminalY);
            exit(1);
        }

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;

        if (TerminalY < InitialY)
        {
            return DEG_MAX - acos(x / sqrt(x * x + y * y)) * DEG;
        }

        return acos(x / sqrt(x * x + y * y)) * DEG;
    }

    double engine::vector::TerminalX(double InitialX, double Length, double Angle)
    {
        if (InitialX != InitialX)
        {
            printf("wze::engine::vector::TerminalX(): InitialX must not be NaN\nParams: InitialX: %lf, Length: %lf, Angle: %lf\n", InitialX, Length, Angle);
            exit(1);
        }
        if (Length != Length)
        {
            printf("wze::engine::vector::TerminalX(): Length must not be NaN\nParams: InitialX: %lf, Length: %lf, Angle: %lf\n", InitialX, Length, Angle);
            exit(1);
        }
        if (Angle != Angle)
        {
            printf("wze::engine::vector::TerminalX(): Angle must not be NaN\nParams: InitialX: %lf, Length: %lf, Angle: %lf\n", InitialX, Length, Angle);
            exit(1);
        }

        return InitialX + Length * cos(Angle * RAD);
    }

    double engine::vector::TerminalY(double InitialY, double Length, double Angle)
    {
        if (InitialY != InitialY)
        {
            printf("wze::engine::vector::TerminalY(): InitialY must not be NaN\nParams: InitialY: %lf, Length: %lf, Angle: %lf\n", InitialY, Length, Angle);
            exit(1);
        }
        if (Length != Length)
        {
            printf("wze::engine::vector::TerminalY(): Length must not be NaN\nParams: InitialY: %lf, Length: %lf, Angle: %lf\n", InitialY, Length, Angle);
            exit(1);
        }
        if (Angle != Angle)
        {
            printf("wze::engine::vector::TerminalY(): Angle must not be NaN\nParams: InitialY: %lf, Length: %lf, Angle: %lf\n", InitialY, Length, Angle);
            exit(1);
        }

        return InitialY + Length * sin(Angle * RAD);
    }

    bool engine::vector::RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, uint16 RaySize, double SamplingStep, std::initializer_list<uint64> ActorTypeWhitelist, std::initializer_list<uint64> ActorIDBlacklist, std::initializer_list<uint64> OverlapboxTypeBlacklist)
    {
        double RayTopLeftX;
        double RayTopLeftY;
        double RayLength;
        double RayAngle;
        double x, y;
        array<actors::actor::overlapboxes::overlapbox*> cache(this->Engine->Collision.BufferSize);
        uint64 i;

        if (InitialX != InitialX)
        {
            printf("wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (SamplingStep != SamplingStep)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (SamplingStep <= 0)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
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

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;
        RayLength = sqrt(x * x + y * y);
        if (TerminalY < InitialY)
        {
            RayAngle = RAD_MAX - acos(x / RayLength);
        }
        else
        {
            RayAngle = acos(x / RayLength);
        }

        while (0 < RayLength)
        {
            for (uint64 j = 0; j < i; j++)
            {
                if (this->Engine->Collision.CheckOverlap(RayTopLeftX, RayTopLeftY, RayTopLeftX + RaySize, RayTopLeftY - RaySize, cache[j]))
                {
                    return false;
                }
            }

            RayTopLeftX += SamplingStep * cos(RayAngle);
            RayTopLeftY += SamplingStep * sin(RayAngle);
            RayLength -= SamplingStep;
        }

        return true;
    }

    bool engine::vector::RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, uint16 RaySize, double SamplingStep, array<uint64>* ActorTypeWhitelist, std::initializer_list<uint64> ActorIDBlacklist, std::initializer_list<uint64> OverlapboxTypeBlacklist)
    {
        double RayTopLeftX;
        double RayTopLeftY;
        double RayLength;
        double RayAngle;
        double x, y;
        array<actors::actor::overlapboxes::overlapbox*> cache(this->Engine->Collision.BufferSize);
        uint64 i;

        if (InitialX != InitialX)
        {
            printf("wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (SamplingStep != SamplingStep)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (SamplingStep <= 0)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (ActorTypeWhitelist == NULL)
        {
            printf("wze::engine.vector.RayCast(): ActorTypeWhiteList must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist.size());
            exit(1);
        }

        if (InitialX == TerminalX && InitialY == TerminalY)
        {
            return true;
        }

        i = 0;
        for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
        {
            if (this->Engine->Actors.Actors[j] == NULL || !ActorTypeWhitelist->Contains({this->Engine->Actors.Actors[j]->Type}) || initializer_list_Contains(ActorIDBlacklist, {j}))
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

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;
        RayLength = sqrt(x * x + y * y);
        if (TerminalY < InitialY)
        {
            RayAngle = RAD_MAX - acos(x / RayLength);
        }
        else
        {
            RayAngle = acos(x / RayLength);
        }

        while (0 < RayLength)
        {
            for (uint64 j = 0; j < i; j++)
            {
                if (this->Engine->Collision.CheckOverlap(RayTopLeftX, RayTopLeftY, RayTopLeftX + RaySize, RayTopLeftY - RaySize, cache[j]))
                {
                    return false;
                }
            }

            RayTopLeftX += SamplingStep * cos(RayAngle);
            RayTopLeftY += SamplingStep * sin(RayAngle);
            RayLength -= SamplingStep;
        }

        return true;
    }

    bool engine::vector::RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, uint16 RaySize, double SamplingStep, std::initializer_list<uint64> ActorTypeWhitelist, array<uint64>* ActorIDBlacklist, std::initializer_list<uint64> OverlapboxTypeBlacklist)
    {
        double RayTopLeftX;
        double RayTopLeftY;
        double RayLength;
        double RayAngle;
        double x, y;
        array<actors::actor::overlapboxes::overlapbox*> cache(this->Engine->Collision.BufferSize);
        uint64 i;

        if (InitialX != InitialX)
        {
            printf("wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (SamplingStep != SamplingStep)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (SamplingStep <= 0)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (ActorIDBlacklist == NULL)
        {
            printf("wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }

        if (InitialX == TerminalX && InitialY == TerminalY)
        {
            return true;
        }

        i = 0;
        for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
        {
            if (this->Engine->Actors.Actors[j] == NULL || !initializer_list_Contains(ActorTypeWhitelist, {this->Engine->Actors.Actors[j]->Type}) || ActorIDBlacklist->Contains({j}))
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

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;
        RayLength = sqrt(x * x + y * y);
        if (TerminalY < InitialY)
        {
            RayAngle = RAD_MAX - acos(x / RayLength);
        }
        else
        {
            RayAngle = acos(x / RayLength);
        }

        while (0 < RayLength)
        {
            for (uint64 j = 0; j < i; j++)
            {
                if (this->Engine->Collision.CheckOverlap(RayTopLeftX, RayTopLeftY, RayTopLeftX + RaySize, RayTopLeftY - RaySize, cache[j]))
                {
                    return false;
                }
            }

            RayTopLeftX += SamplingStep * cos(RayAngle);
            RayTopLeftY += SamplingStep * sin(RayAngle);
            RayLength -= SamplingStep;
        }

        return true;
    }

    bool engine::vector::RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, uint16 RaySize, double SamplingStep, std::initializer_list<uint64> ActorTypeWhitelist, std::initializer_list<uint64> ActorIDBlacklist, array<uint64>* OverlapboxTypeBlacklist)
    {
        double RayTopLeftX;
        double RayTopLeftY;
        double RayLength;
        double RayAngle;
        double x, y;
        array<actors::actor::overlapboxes::overlapbox*> cache(this->Engine->Collision.BufferSize);
        uint64 i;

        if (InitialX != InitialX)
        {
            printf("wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (SamplingStep != SamplingStep)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (SamplingStep <= 0)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (OverlapboxTypeBlacklist == NULL)
        {
            printf("wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
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
                if (this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k] == NULL || OverlapboxTypeBlacklist->Contains({this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k]->Type}))
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

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;
        RayLength = sqrt(x * x + y * y);
        if (TerminalY < InitialY)
        {
            RayAngle = RAD_MAX - acos(x / RayLength);
        }
        else
        {
            RayAngle = acos(x / RayLength);
        }

        while (0 < RayLength)
        {
            for (uint64 j = 0; j < i; j++)
            {
                if (this->Engine->Collision.CheckOverlap(RayTopLeftX, RayTopLeftY, RayTopLeftX + RaySize, RayTopLeftY - RaySize, cache[j]))
                {
                    return false;
                }
            }

            RayTopLeftX += SamplingStep * cos(RayAngle);
            RayTopLeftY += SamplingStep * sin(RayAngle);
            RayLength -= SamplingStep;
        }

        return true;
    }

    bool engine::vector::RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, uint16 RaySize, double SamplingStep, array<uint64>* ActorTypeWhitelist, array<uint64>* ActorIDBlacklist, std::initializer_list<uint64> OverlapboxTypeBlacklist)
    {
        double RayTopLeftX;
        double RayTopLeftY;
        double RayLength;
        double RayAngle;
        double x, y;
        array<actors::actor::overlapboxes::overlapbox*> cache(this->Engine->Collision.BufferSize);
        uint64 i;

        if (InitialX != InitialX)
        {
            printf("wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (SamplingStep != SamplingStep)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (SamplingStep <= 0)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (ActorTypeWhitelist == NULL)
        {
            printf("wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }
        if (ActorIDBlacklist == NULL)
        {
            printf("wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist.size());
            exit(1);
        }

        if (InitialX == TerminalX && InitialY == TerminalY)
        {
            return true;
        }

        i = 0;
        for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
        {
            if (this->Engine->Actors.Actors[j] == NULL || !ActorTypeWhitelist->Contains({this->Engine->Actors.Actors[j]->Type}) || ActorIDBlacklist->Contains({j}))
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

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;
        RayLength = sqrt(x * x + y * y);
        if (TerminalY < InitialY)
        {
            RayAngle = RAD_MAX - acos(x / RayLength);
        }
        else
        {
            RayAngle = acos(x / RayLength);
        }

        while (0 < RayLength)
        {
            for (uint64 j = 0; j < i; j++)
            {
                if (this->Engine->Collision.CheckOverlap(RayTopLeftX, RayTopLeftY, RayTopLeftX + RaySize, RayTopLeftY - RaySize, cache[j]))
                {
                    return false;
                }
            }

            RayTopLeftX += SamplingStep * cos(RayAngle);
            RayTopLeftY += SamplingStep * sin(RayAngle);
            RayLength -= SamplingStep;
        }

        return true;
    }

    bool engine::vector::RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, uint16 RaySize, double SamplingStep, array<uint64>* ActorTypeWhitelist, std::initializer_list<uint64> ActorIDBlacklist, array<uint64>* OverlapboxTypeBlacklist)
    {
        double RayTopLeftX;
        double RayTopLeftY;
        double RayLength;
        double RayAngle;
        double x, y;
        array<actors::actor::overlapboxes::overlapbox*> cache(this->Engine->Collision.BufferSize);
        uint64 i;

        if (InitialX != InitialX)
        {
            printf("wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (SamplingStep != SamplingStep)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (SamplingStep <= 0)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (ActorTypeWhitelist == NULL)
        {
            printf("wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }
        if (OverlapboxTypeBlacklist == NULL)
        {
            printf("wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist.size(), OverlapboxTypeBlacklist);
            exit(1);
        }

        if (InitialX == TerminalX && InitialY == TerminalY)
        {
            return true;
        }

        i = 0;
        for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
        {
            if (this->Engine->Actors.Actors[j] == NULL || !ActorTypeWhitelist->Contains({this->Engine->Actors.Actors[j]->Type}) || initializer_list_Contains(ActorIDBlacklist, {j}))
            {
                continue;
            }

            for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes.Length(); k++)
            {
                if (this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k] == NULL || OverlapboxTypeBlacklist->Contains({this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k]->Type}))
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

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;
        RayLength = sqrt(x * x + y * y);
        if (TerminalY < InitialY)
        {
            RayAngle = RAD_MAX - acos(x / RayLength);
        }
        else
        {
            RayAngle = acos(x / RayLength);
        }

        while (0 < RayLength)
        {
            for (uint64 j = 0; j < i; j++)
            {
                if (this->Engine->Collision.CheckOverlap(RayTopLeftX, RayTopLeftY, RayTopLeftX + RaySize, RayTopLeftY - RaySize, cache[j]))
                {
                    return false;
                }
            }

            RayTopLeftX += SamplingStep * cos(RayAngle);
            RayTopLeftY += SamplingStep * sin(RayAngle);
            RayLength -= SamplingStep;
        }

        return true;
    }

    bool engine::vector::RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, uint16 RaySize, double SamplingStep, std::initializer_list<uint64> ActorTypeWhitelist, array<uint64>* ActorIDBlacklist, array<uint64>* OverlapboxTypeBlacklist)
    {
        double RayTopLeftX;
        double RayTopLeftY;
        double RayLength;
        double RayAngle;
        double x, y;
        array<actors::actor::overlapboxes::overlapbox*> cache(this->Engine->Collision.BufferSize);
        uint64 i;

        if (InitialX != InitialX)
        {
            printf("wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (SamplingStep != SamplingStep)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (SamplingStep <= 0)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (ActorIDBlacklist == NULL)
        {
            printf("wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (OverlapboxTypeBlacklist == NULL)
        {
            printf("wze::engine.vector.RayCast(): OverlapboxTypeBlackList must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist.size(), ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }

        if (InitialX == TerminalX && InitialY == TerminalY)
        {
            return true;
        }

        i = 0;
        for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
        {
            if (this->Engine->Actors.Actors[j] == NULL || !initializer_list_Contains(ActorTypeWhitelist, {this->Engine->Actors.Actors[j]->Type}) || ActorIDBlacklist->Contains({j}))
            {
                continue;
            }

            for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes.Length(); k++)
            {
                if (this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k] == NULL || OverlapboxTypeBlacklist->Contains({this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k]->Type}))
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

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;
        RayLength = sqrt(x * x + y * y);
        if (TerminalY < InitialY)
        {
            RayAngle = RAD_MAX - acos(x / RayLength);
        }
        else
        {
            RayAngle = acos(x / RayLength);
        }

        while (0 < RayLength)
        {
            for (uint64 j = 0; j < i; j++)
            {
                if (this->Engine->Collision.CheckOverlap(RayTopLeftX, RayTopLeftY, RayTopLeftX + RaySize, RayTopLeftY - RaySize, cache[j]))
                {
                    return false;
                }
            }

            RayTopLeftX += SamplingStep * cos(RayAngle);
            RayTopLeftY += SamplingStep * sin(RayAngle);
            RayLength -= SamplingStep;
        }

        return true;
    }

    bool engine::vector::RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, uint16 RaySize, double SamplingStep, array<uint64>* ActorTypeWhitelist, array<uint64>* ActorIDBlacklist, array<uint64>* OverlapboxTypeBlacklist)
    {
        double RayTopLeftX;
        double RayTopLeftY;
        double RayLength;
        double RayAngle;
        double x, y;
        array<actors::actor::overlapboxes::overlapbox*> cache(this->Engine->Collision.BufferSize);
        uint64 i;

        if (InitialX != InitialX)
        {
            printf("wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (InitialY != InitialY)
        {
            printf("wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (TerminalX != TerminalX)
        {
            printf("wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (TerminalY != TerminalY)
        {
            printf("wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (SamplingStep != SamplingStep)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (SamplingStep <= 0)
        {
            printf("wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (ActorTypeWhitelist == NULL)
        {
            printf("wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (ActorIDBlacklist == NULL)
        {
            printf("wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }
        if (OverlapboxTypeBlacklist == NULL)
        {
            printf("wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n", InitialX, InitialY, TerminalX, TerminalY, RaySize, SamplingStep, ActorTypeWhitelist, ActorIDBlacklist, OverlapboxTypeBlacklist);
            exit(1);
        }

        if (InitialX == TerminalX && InitialY == TerminalY)
        {
            return true;
        }

        i = 0;
        for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
        {
            if (this->Engine->Actors.Actors[j] == NULL || !ActorTypeWhitelist->Contains({this->Engine->Actors.Actors[j]->Type}) || ActorIDBlacklist->Contains({j}))
            {
                continue;
            }

            for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes.Length(); k++)
            {
                if (this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k] == NULL || OverlapboxTypeBlacklist->Contains({this->Engine->Actors.Actors[j]->Overlapboxes.Overlapboxes[k]->Type}))
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

        x = TerminalX - InitialX;
        y = TerminalY - InitialY;
        RayLength = sqrt(x * x + y * y);
        if (TerminalY < InitialY)
        {
            RayAngle = RAD_MAX - acos(x / RayLength);
        }
        else
        {
            RayAngle = acos(x / RayLength);
        }

        while (0 < RayLength)
        {
            for (uint64 j = 0; j < i; j++)
            {
                if (this->Engine->Collision.CheckOverlap(RayTopLeftX, RayTopLeftY, RayTopLeftX + RaySize, RayTopLeftY - RaySize, cache[j]))
                {
                    return false;
                }
            }

            RayTopLeftX += SamplingStep * cos(RayAngle);
            RayTopLeftY += SamplingStep * sin(RayAngle);
            RayLength -= SamplingStep;
        }

        return true;
    }
}