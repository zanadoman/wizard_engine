#include "WizardEngine.hpp"
#include <cmath>

using namespace neo;

namespace wze
{
    engine::actors::actor::overlapboxes::overlapboxes(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), Overlapboxes({(overlapbox*)NULL}) {}

    engine::actors::actor::overlapboxes::~overlapboxes()
    {
        for (uint64 i = 1; i < this->Overlapboxes.Length(); i++)
        {
            delete this->Overlapboxes[i];
        }
    }

    engine::actors::actor::overlapboxes::overlapbox& engine::actors::actor::overlapboxes::New(uint64 Type)
    {
        for (uint64 i = 1; i < this->Overlapboxes.Length(); i++)
        {
            if (this->Overlapboxes[i] == NULL)
            {
                if ((this->Overlapboxes[i] = new overlapbox(this->Engine, this->Actor, i, Type)) == NULL)
                {
                    printf("wze::engine.actors[].overlapboxes.New(): Memory allocation failed\nParams: Type: %lld\n", Type);
                    exit(1);
                }

                return *this->Overlapboxes[i];
            }
        }

        if ((this->Overlapboxes += {new overlapbox(this->Engine, this->Actor, this->Overlapboxes.Length(), Type)})[this->Overlapboxes.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes.New(): Memory allocation failed\nParams: Type: %lld\n", Type);
            exit(1);
        }

        return *this->Overlapboxes[this->Overlapboxes.Length() - 1];
    }

    uint8 engine::actors::actor::overlapboxes::Delete(uint64 OverlapboxID)
    {
        uint64 i;

        if (this->Overlapboxes.Length() <= OverlapboxID || this->Overlapboxes[OverlapboxID] == NULL)
        {
            return 0;
        }

        delete this->Overlapboxes[OverlapboxID];
        this->Overlapboxes[OverlapboxID] = NULL;

        if (this->Overlapboxes[this->Overlapboxes.Length() -  1] == NULL && 1 < this->Overlapboxes.Length())
        {
            for (i = this->Overlapboxes.Length(); 1 < i; i--)
            {
                if (this->Overlapboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Overlapboxes.Remove(i, this->Overlapboxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::overlapboxes::Purge(std::initializer_list<uint64> KeepOverlapboxIDs)
    {
        uint64 i;

        for (i = 1; i < this->Overlapboxes.Length(); i++)
        {
            if (!initializer_list_Contains(KeepOverlapboxIDs, {i}))
            {
                delete this->Overlapboxes[i];
                this->Overlapboxes[i] = NULL;
            }
        }

        if (this->Overlapboxes[this->Overlapboxes.Length() -  1] == NULL && 1 < this->Overlapboxes.Length())
        {
            for (i = this->Overlapboxes.Length(); 1 < i; i--)
            {
                if (this->Overlapboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Overlapboxes.Remove(i, this->Overlapboxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::overlapboxes::Purge(array<uint64>* KeepOverlapboxIDs)
    {
        uint64 i;

        if (KeepOverlapboxIDs == NULL)
        {
            printf("wze::engine.actors[].overlapboxes.Purge(): KeepOverlapboxIDs must not be NULL\nParams: KeepOverlapboxIDs: %p\n", KeepOverlapboxIDs);
            exit(1);
        }

        for (i = 1; i < this->Overlapboxes.Length(); i++)
        {
            if (!KeepOverlapboxIDs->Contains({i}))
            {
                delete this->Overlapboxes[i];
                this->Overlapboxes[i] = NULL;
            }
        }

        if (this->Overlapboxes[this->Overlapboxes.Length() -  1] == NULL && 1 < this->Overlapboxes.Length())
        {
            for (i = this->Overlapboxes.Length(); 1 < i; i--)
            {
                if (this->Overlapboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Overlapboxes.Remove(i, this->Overlapboxes.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::overlapboxes::overlapbox& engine::actors::actor::overlapboxes::operator [] (uint64 OverlapboxID)
    {
        if (OverlapboxID == 0)
        {
            printf("wze::engine.actors[].overlapboxes[]: Illegal access to NULL Overlapbox\nParams: OverlapboxID: %lld\n", OverlapboxID);
            exit(1);
        }
        if (this->Overlapboxes.Length() <= OverlapboxID || this->Overlapboxes[OverlapboxID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[]: Overlapbox does not exist\nParams: OverlapboxID: %lld\n", OverlapboxID);
            exit(1);
        }

        return *this->Overlapboxes[OverlapboxID];
    }

    engine::actors::actor::overlapboxes::overlapbox::overlapbox(engine* Engine, actor* Actor, uint64 ID, uint64 Type) : Engine(Engine), Actor(Actor)
    {
        this->AngleLocked = true;
        this->OffsetAngleLocked = true;
        this->Visible = false;
        this->ID = ID;
        this->Type = Type;
        this->X = this->Actor->X;
        this->Y = this->Actor->Y;
        this->Width = this->Actor->Width;
        this->Height = this->Actor->Height;
        this->Angle = this->Actor->Angle;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->ActiveWidth = this->Width;
        this->ActiveHeight = this->Height;
        this->ActiveMedianLength = engine::vector::Length(0, 0, this->Width, this->Height) / 2;
        this->ActiveMedian1Angle = this->ActiveMedianLength != 0 ? engine::vector::Angle(0, 0, this->Width, this->Height) : 0;
        this->ActiveMedian2Angle = this->ActiveMedianLength != 0 ? engine::vector::Angle(this->Width, 0, 0, this->Height) : 0;

        this->UpdateOverlapboxActiveScale();
    }

    engine::actors::actor::overlapboxes::overlapbox::~overlapbox() {}

    uint64 engine::actors::actor::overlapboxes::overlapbox::GetID()
    {
        return this->ID;
    }

    uint64 engine::actors::actor::overlapboxes::overlapbox::GetType()
    {
        return this->Type;
    }

    uint64 engine::actors::actor::overlapboxes::overlapbox::GetActorID()
    {
        return this->Actor->ID;
    }

    double engine::actors::actor::overlapboxes::overlapbox::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::overlapboxes::overlapbox::SetX(double X)
    {
        if (X != X)
        {
            printf("wze::engine.actors[].overlapboxes[].SetX(): X must not be NaN\nParams: X: %lf\n", X);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

        return this->X = X;
    }

    double engine::actors::actor::overlapboxes::overlapbox::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::overlapboxes::overlapbox::SetY(double Y)
    {
        if (Y != Y)
        {
            printf("wze::engine.actors[].overlapboxes[].SetY(): Y must not be NaN\nParams: Y: %lf\n", Y);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

        return this->Y = Y;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::GetWidth()
    {
        return this->Width;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::SetWidth(uint16 Width)
    {
        this->ActiveMedianLength = engine::vector::Length(0, 0, Width, this->Height) / 2;
        this->ActiveMedian1Angle = this->ActiveMedianLength != 0 ? engine::vector::Angle(0, 0, Width, this->Height) : 0;
        this->ActiveMedian2Angle = this->ActiveMedianLength != 0 ? engine::vector::Angle(Width, 0, 0, this->Height) : 0;

        this->Width = Width;
        this->UpdateOverlapboxActiveScale();

        return this->Width;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::GetHeight()
    {
        return this->Height;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::SetHeight(uint16 Height)
    {
        this->ActiveMedianLength = engine::vector::Length(0, 0, this->Width, Height) / 2;
        this->ActiveMedian1Angle = this->ActiveMedianLength != 0 ? engine::vector::Angle(0, 0, this->Width, Height) : 0;
        this->ActiveMedian2Angle = this->ActiveMedianLength != 0 ? engine::vector::Angle(this->Width, 0, 0, Height) : 0;

        this->Height = Height;
        this->UpdateOverlapboxActiveScale();

        return this->Height;
    }

    double engine::actors::actor::overlapboxes::overlapbox::GetAngle()
    {
        return this->Angle;
    }

    double engine::actors::actor::overlapboxes::overlapbox::SetAngle(double Angle)
    {
        if (Angle != Angle)
        {
            printf("wze::engine.actors[].overlapboxes[].SetAngle(): Angle must not be NaN\nParams: Angle: %lf\n", Angle);
            exit(1);
        }

        this->Angle = Angle;
        this->UpdateOverlapboxActiveScale();

        return this->Angle;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::GetActiveWidth()
    {
        return this->ActiveWidth;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::GetActiveHeight()
    {
        return this->ActiveHeight;
    }

    bool engine::actors::actor::overlapboxes::overlapbox::IsOverlappingWith(uint64 ActorID, uint64 OverlapboxID)
    {
        double ActiveTopLeftX;
        double ActiveTopLeftY;
        double ActiveBotRightX;
        double ActiveBotRightY;

        if (ActorID == 0)
        {
            printf("wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Illegal use of NULL Actor\nParams: ActorID: %lld, OverlapboxID: %lld\n", ActorID, OverlapboxID);
            exit(1);
        }
        if (this->Engine->Actors.Actors.Length() <= ActorID || this->Engine->Actors.Actors[ActorID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Actor does not exist\nParams: ActorID: %lld, OverlapboxID: %lld\n", ActorID, OverlapboxID);
            exit(1);
        }
        if (OverlapboxID == 0)
        {
            printf("wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Illegal use of NULL Overlapbox\nParams: ActorID: %lld, OverlapboxID: %lld\n", ActorID, OverlapboxID);
            exit(1);
        }
        if (this->Engine->Actors.Actors[ActorID]->Overlapboxes.Overlapboxes.Length() <= OverlapboxID || this->Engine->Actors.Actors[ActorID]->Overlapboxes.Overlapboxes[OverlapboxID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Overlapbox does not exist\nParams: ActorID: %lld, OverlapboxID: %lld\n", ActorID, OverlapboxID);
            exit(1);
        }

        ActiveTopLeftX = this->X - (this->ActiveWidth >> 1);
        ActiveTopLeftY = this->Y + (this->ActiveHeight >> 1);
        ActiveBotRightX = ActiveTopLeftX + this->ActiveWidth;
        ActiveBotRightY = ActiveTopLeftY - this->ActiveHeight;

        return this->Engine->Collision.CheckOverlap(ActiveTopLeftX, ActiveTopLeftY, ActiveBotRightX, ActiveBotRightY, this->Engine->Actors.Actors[ActorID]->Overlapboxes.Overlapboxes[OverlapboxID]);
    }

    uint8 engine::actors::actor::overlapboxes::overlapbox::GetOverlapState(array<array<uint64>>* OverlapboxesByActors, std::initializer_list<uint64> ActorTypeWhitelist, std::initializer_list<uint64> ActorIDBlacklist)
    {
        double ActiveTopLeftX;
        double ActiveTopLeftY;
        double ActiveBotRightX;
        double ActiveBotRightY;

        if (OverlapboxesByActors == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist(length): %ld\n", OverlapboxesByActors, ActorTypeWhitelist.size(), ActorIDBlacklist.size());
            exit(1);
        }

        OverlapboxesByActors->Clear();
        OverlapboxesByActors->Insert(0, this->Engine->Actors.Actors.Length());

        ActiveTopLeftX = this->X - (this->ActiveWidth >> 1);
        ActiveTopLeftY = this->Y + (this->ActiveHeight >> 1);
        ActiveBotRightX = ActiveTopLeftX + this->ActiveWidth;
        ActiveBotRightY = ActiveTopLeftY - this->ActiveHeight;

        for (uint64 i = 1; i < this->Engine->Actors.Actors.Length(); i++)
        {
            if (this->Engine->Actors.Actors[i] == NULL || this->Engine->Actors.Actors[i] == this->Actor || !initializer_list_Contains(ActorTypeWhitelist, {this->Engine->Actors.Actors[i]->Type}) || initializer_list_Contains(ActorIDBlacklist, {i}))
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j] == NULL)
                {
                    continue;
                }

                if (this->Engine->Collision.CheckOverlap(ActiveTopLeftX, ActiveTopLeftY, ActiveBotRightX, ActiveBotRightY, this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]))
                {
                    (*OverlapboxesByActors)[i] += {j};
                }
            }
        }

        return 0;
    }

    uint8 engine::actors::actor::overlapboxes::overlapbox::GetOverlapState(array<array<uint64>>* OverlapboxesByActors, array<uint64>* ActorTypeWhitelist, std::initializer_list<uint64> ActorIDBlacklist)
    {
        double ActiveTopLeftX;
        double ActiveTopLeftY;
        double ActiveBotRightX;
        double ActiveBotRightY;

        if (OverlapboxesByActors == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\n", OverlapboxesByActors, ActorTypeWhitelist, ActorIDBlacklist.size());
            exit(1);
        }
        if (ActorTypeWhitelist == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\n", OverlapboxesByActors, ActorTypeWhitelist, ActorIDBlacklist.size());
            exit(1);
        }

        OverlapboxesByActors->Clear();
        OverlapboxesByActors->Insert(0, this->Engine->Actors.Actors.Length());

        ActiveTopLeftX = this->X - (this->ActiveWidth >> 1);
        ActiveTopLeftY = this->Y + (this->ActiveHeight >> 1);
        ActiveBotRightX = ActiveTopLeftX + this->ActiveWidth;
        ActiveBotRightY = ActiveTopLeftY - this->ActiveHeight;

        for (uint64 i = 1; i < this->Engine->Actors.Actors.Length(); i++)
        {
            if (this->Engine->Actors.Actors[i] == NULL || this->Engine->Actors.Actors[i] == this->Actor || !ActorTypeWhitelist->Contains({this->Engine->Actors.Actors[i]->Type}) || initializer_list_Contains(ActorIDBlacklist, {i}))
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j] == NULL)
                {
                    continue;
                }

                if (this->Engine->Collision.CheckOverlap(ActiveTopLeftX, ActiveTopLeftY, ActiveBotRightX, ActiveBotRightY, this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]))
                {
                    (*OverlapboxesByActors)[i] += {j};
                }
            }
        }

        return 0;
    }

    uint8 engine::actors::actor::overlapboxes::overlapbox::GetOverlapState(array<array<uint64>>* OverlapboxesByActors, std::initializer_list<uint64> ActorTypeWhitelist, array<uint64>* ActorIDBlacklist)
    {
        double ActiveTopLeftX;
        double ActiveTopLeftY;
        double ActiveBotRightX;
        double ActiveBotRightY;

        if (OverlapboxesByActors == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\n", OverlapboxesByActors, ActorTypeWhitelist.size(), ActorIDBlacklist);
            exit(1);
        }
        if (ActorIDBlacklist == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorIDBlacklist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\n", OverlapboxesByActors, ActorTypeWhitelist.size(), ActorIDBlacklist);
            exit(1);
        }

        OverlapboxesByActors->Clear();
        OverlapboxesByActors->Insert(0, this->Engine->Actors.Actors.Length());

        ActiveTopLeftX = this->X - (this->ActiveWidth >> 1);
        ActiveTopLeftY = this->Y + (this->ActiveHeight >> 1);
        ActiveBotRightX = ActiveTopLeftX + this->ActiveWidth;
        ActiveBotRightY = ActiveTopLeftY - this->ActiveHeight;

        for (uint64 i = 1; i < this->Engine->Actors.Actors.Length(); i++)
        {
            if (this->Engine->Actors.Actors[i] == NULL || this->Engine->Actors.Actors[i] == this->Actor || !initializer_list_Contains(ActorTypeWhitelist, {this->Engine->Actors.Actors[i]->Type}) || ActorIDBlacklist->Contains({i}))
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j] == NULL)
                {
                    continue;
                }

                if (this->Engine->Collision.CheckOverlap(ActiveTopLeftX, ActiveTopLeftY, ActiveBotRightX, ActiveBotRightY, this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]))
                {
                    (*OverlapboxesByActors)[i] += {j};
                }
            }
        }

        return 0;
    }

    uint8 engine::actors::actor::overlapboxes::overlapbox::GetOverlapState(array<array<uint64>>* OverlapboxesByActors, array<uint64>* ActorTypeWhitelist, array<uint64>* ActorIDBlacklist)
    {
        double ActiveTopLeftX;
        double ActiveTopLeftY;
        double ActiveBotRightX;
        double ActiveBotRightY;

        if (OverlapboxesByActors == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\n", OverlapboxesByActors, ActorTypeWhitelist, ActorIDBlacklist);
            exit(1);
        }
        if (ActorTypeWhitelist == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\n", OverlapboxesByActors, ActorTypeWhitelist, ActorIDBlacklist);
            exit(1);
        }
        if (ActorIDBlacklist == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorIDBlacklist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\n", OverlapboxesByActors, ActorTypeWhitelist, ActorIDBlacklist);
            exit(1);
        }

        OverlapboxesByActors->Clear();
        OverlapboxesByActors->Insert(0, this->Engine->Actors.Actors.Length());

        ActiveTopLeftX = this->X - (this->ActiveWidth >> 1);
        ActiveTopLeftY = this->Y + (this->ActiveHeight >> 1);
        ActiveBotRightX = ActiveTopLeftX + this->ActiveWidth;
        ActiveBotRightY = ActiveTopLeftY - this->ActiveHeight;

        for (uint64 i = 1; i < this->Engine->Actors.Actors.Length(); i++)
        {
            if (this->Engine->Actors.Actors[i] == NULL || this->Engine->Actors.Actors[i] == this->Actor || !ActorTypeWhitelist->Contains({this->Engine->Actors.Actors[i]->Type}) || ActorIDBlacklist->Contains({i}))
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j] == NULL)
                {
                    continue;
                }

                if (this->Engine->Collision.CheckOverlap(ActiveTopLeftX, ActiveTopLeftY, ActiveBotRightX, ActiveBotRightY, this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]))
                {
                    (*OverlapboxesByActors)[i] += {j};
                }
            }
        }

        return 0;
    }

    button engine::actors::actor::overlapboxes::overlapbox::GetButtonState()
    {
        return this->ButtonState;
    }

    uint8 engine::actors::actor::overlapboxes::overlapbox::UpdateOverlapboxActiveScale()
    {
        double MedAngle1, MedAngle2, MedAngle1_180, MedAngle2_180;
        sint32 x1, x2, x3, x4;
        sint32 y1, y2, y3, y4;
        sint32 minX, maxX, minY, maxY;
        sint32 tmp1, tmp2;

        MedAngle1 = this->Angle + this->ActiveMedian1Angle;
        MedAngle2 = this->Angle + this->ActiveMedian2Angle;
        MedAngle1_180 = MedAngle1 + 180;
        MedAngle2_180 =  MedAngle2 + 180;

        x1 = round(engine::vector::TerminalX(0, this->ActiveMedianLength, MedAngle1));
        x2 = round(engine::vector::TerminalX(0, this->ActiveMedianLength, MedAngle2));
        x3 = round(engine::vector::TerminalX(0, this->ActiveMedianLength, MedAngle1_180));
        x4 = round(engine::vector::TerminalX(0, this->ActiveMedianLength, MedAngle2_180));

        y1 = round(engine::vector::TerminalY(0, this->ActiveMedianLength, MedAngle1));
        y2 = round(engine::vector::TerminalY(0, this->ActiveMedianLength, MedAngle2));
        y3 = round(engine::vector::TerminalY(0, this->ActiveMedianLength, MedAngle1_180));
        y4 = round(engine::vector::TerminalY(0, this->ActiveMedianLength, MedAngle2_180));

        minX = (tmp1 = x1 < x2 ? x1 : x2) < (tmp2 = x3 < x4 ? x3 : x4) ? tmp1 : tmp2;
        maxX = (tmp2 = x4 < x3 ? x3 : x4) < (tmp1 = x2 < x1 ? x1 : x2) ? tmp1 : tmp2;
        minY = (tmp1 = y1 < y2 ? y1 : y2) < (tmp2 = y3 < y4 ? y3 : y4) ? tmp1 : tmp2;
        maxY = (tmp2 = y4 < y3 ? y3 : y4) < (tmp1 = y2 < y1 ? y1 : y2) ? tmp1 : tmp2;

        this->ActiveWidth = maxX - minX;
        this->ActiveHeight = maxY - minY;

        return 0;
    }
}