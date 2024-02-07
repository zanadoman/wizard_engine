#include "Includes/NeoTypes++.hpp"
#include "WizardEngine.hpp"

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

    uint64 engine::actors::actor::overlapboxes::New(uint64 Type)
    {
        for (uint64 i = 1; i < this->Overlapboxes.Length(); i++)
        {
            if (this->Overlapboxes[i] == NULL)
            {
                if ((this->Overlapboxes[i] = new overlapbox(this->Engine, this->Actor, Type)) == NULL)
                {
                    printf("wze::engine.actors[].overlapboxes.New(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Overlapboxes += {new overlapbox(this->Engine, this->Actor, Type)})[this->Overlapboxes.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes.New(): Memory allocation failed\n");
            exit(1);
        }

        return this->Overlapboxes.Length() - 1;
    }

    uint8 engine::actors::actor::overlapboxes::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("wze::engine.actors[].overlapboxes.Delete(): Illegal deletion of NULL Overlapbox\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Overlapboxes.Length() <= ID || this->Overlapboxes[ID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes.Delete(): Overlapbox does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        delete this->Overlapboxes[ID];
        this->Overlapboxes[ID] = NULL;

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

    uint8 engine::actors::actor::overlapboxes::Purge(std::initializer_list<uint64> Keep)
    {
        uint64 i;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] != 0 && (this->Overlapboxes.Length() <= Keep.begin()[i] || this->Overlapboxes[Keep.begin()[i]] == NULL))
            {
                printf("wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Overlapboxes.Length(); i++)
        {
            if (!initializer_list_Contains(Keep, {i}))
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

    uint8 engine::actors::actor::overlapboxes::Purge(array<uint64>* Keep)
    {
        uint64 i;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] != 0 && (this->Overlapboxes.Length() <= (*Keep)[i] || this->Overlapboxes[(*Keep)[i]] == NULL))
            {
                printf("wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Overlapboxes.Length(); i++)
        {
            if (!Keep->Contains({i}))
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

    engine::actors::actor::overlapboxes::overlapbox& engine::actors::actor::overlapboxes::operator [] (uint64 ID)
    {
        if (ID == 0)
        {
            printf("wze::engine.actors[].overlapboxes[]: Illegal access to NULL Overlapbox\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Overlapboxes.Length() <= ID || this->Overlapboxes[ID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[]: Overlapbox does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Overlapboxes[ID];
    }

    engine::actors::actor::overlapboxes::overlapbox::overlapbox(engine* Engine, actor* Actor, uint64 Type) : Engine(Engine), Actor(Actor)
    {
        this->AngleLocked = true;
        this->OffsetAngleLocked = true;
        this->Visible = false;
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
        this->ActiveMedianLength = this->Engine->Vector.Length(0, 0, this->Width, this->Height) / 2;
        this->ActiveMedian1Angle = this->ActiveMedianLength != 0 ? this->Engine->Vector.Angle(0, 0, this->Width, this->Height) : 0;
        this->ActiveMedian2Angle = this->ActiveMedianLength != 0 ? this->Engine->Vector.Angle(this->Width, 0, 0, this->Height) : 0;

        this->UpdateOverlapboxScale();
    }

    engine::actors::actor::overlapboxes::overlapbox::~overlapbox() {}

    void* engine::actors::actor::overlapboxes::overlapbox::GetActorData()
    {
        return this->Actor->Data;
    }

    uint64 engine::actors::actor::overlapboxes::overlapbox::GetActorType()
    {
        return this->Actor->Type;
    }

    uint64 engine::actors::actor::overlapboxes::overlapbox::GetType()
    {
        return this->Type;
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

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

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

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

        return this->Y = Y;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::GetWidth()
    {
        return this->Width;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::SetWidth(uint16 Width)
    {
        this->Width = Width;

        this->ActiveMedianLength = this->Engine->Vector.Length(0, 0, Width, this->Height) / 2;
        this->ActiveMedian1Angle = this->ActiveMedianLength != 0 ? this->Engine->Vector.Angle(0, 0, Width, this->Height) : 0;
        this->ActiveMedian2Angle = this->ActiveMedianLength != 0 ? this->Engine->Vector.Angle(Width, 0, 0, this->Height) : 0;

        this->UpdateOverlapboxScale();

        return this->Width;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::GetHeight()
    {
        return this->Height;
    }

    uint16 engine::actors::actor::overlapboxes::overlapbox::SetHeight(uint16 Height)
    {
        this->Height = Height;

        this->ActiveMedianLength = this->Engine->Vector.Length(0, 0, this->Width, Height) / 2;
        this->ActiveMedian1Angle = this->ActiveMedianLength != 0 ? this->Engine->Vector.Angle(0, 0, this->Width, Height) : 0;
        this->ActiveMedian2Angle = this->ActiveMedianLength != 0 ? this->Engine->Vector.Angle(this->Width, 0, 0, Height) : 0;

        this->UpdateOverlapboxScale();

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

        this->UpdateOverlapboxScale();

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
        if (ActorID == 0)
        {
            return false;
        }
        if (this->Engine->Actors.Actors.Length() <= ActorID || this->Engine->Actors.Actors[ActorID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Actor does not exist\nParams: ActorID: %lld, OverlapboxID: %lld\n", ActorID, OverlapboxID);
            exit(1);
        }
        if (OverlapboxID == 0)
        {
            return false;
        }
        if (this->Engine->Actors.Actors[ActorID]->Overlapboxes.Overlapboxes.Length() <= OverlapboxID || this->Engine->Actors.Actors[ActorID]->Overlapboxes.Overlapboxes[OverlapboxID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Overlapbox does not exist\nParams: ActorID: %lld, OverlapboxID: %lld\n", ActorID, OverlapboxID);
            exit(1);
        }

        return this->Engine->Collision.CheckOverlap(this, this->Engine->Actors.Actors[ActorID]->Overlapboxes.Overlapboxes[OverlapboxID]);
    }

    uint8 engine::actors::actor::overlapboxes::overlapbox::GetOverlapState(array<array<uint64>>* OverlapboxesByActors)
    {
        OverlapboxesByActors->Clear();
        OverlapboxesByActors->Insert(0, this->Engine->Actors.Actors.Length());

        for (uint64 i = 1; i < this->Engine->Actors.Actors.Length(); i++)
        {
            if (this->Engine->Actors.Actors[i] == NULL || this->Engine->Actors.Actors[i] == this->Actor)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j] == NULL)
                {
                    continue;
                }

                if (this->Engine->Collision.CheckOverlap(this, this->Engine->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]))
                {
                    (*OverlapboxesByActors)[i] += {j};
                }
            }
        }

        return 0;
    }

    button engine::actors::actor::overlapboxes::overlapbox::GetButtonState()
    {
        uint16 result;

        double OverlapboxTopLeftX;
        double OverlapboxTopLeftY;
        double OverlapboxBotRightX;
        double OverlapboxBotRightY;
        double CursorX, CursorY;

        result = BTN_NONE;

        OverlapboxTopLeftX = this->X - (this->ActiveWidth >> 1);
        OverlapboxTopLeftY = this->Y + (this->ActiveHeight >> 1);
        OverlapboxBotRightX = OverlapboxTopLeftX + this->ActiveWidth;
        OverlapboxBotRightY = OverlapboxTopLeftY - this->ActiveHeight;

        CursorX = this->Engine->Mouse.GetX(this->Actor->Layer);
        CursorY = this->Engine->Mouse.GetY(this->Actor->Layer);

        if (OverlapboxTopLeftX <= CursorX && CursorX <= OverlapboxBotRightX && OverlapboxBotRightY <= CursorY && CursorY <= OverlapboxTopLeftY)
        {
            result |= BTN_HOVERED;

            if (this->Engine->Keys[KEY_LMB])
            {
                result |= BTN_PRESSED_LMB;
            }
            else if (this->ButtonState & BTN_PRESSED_LMB)
            {
                result |= BTN_RELEASED_LMB;
            }
            if (this->Engine->Keys[KEY_MMB])
            {
                result |= BTN_PRESSED_MMB;
            }
            else if (this->ButtonState & BTN_PRESSED_MMB)
            {
                result |= BTN_RELEASED_MMB;
            }
            if (this->Engine->Keys[KEY_RMB])
            {
                result |= BTN_PRESSED_RMB;
            }
            else if (this->ButtonState & BTN_PRESSED_RMB)
            {
                result |= BTN_RELEASED_RMB;
            }
        }

        return this->ButtonState = (button)result;
    }

    uint8 engine::actors::actor::overlapboxes::overlapbox::UpdateOverlapboxScale()
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

        x1 = round(this->Engine->Vector.TerminalX(0, this->ActiveMedianLength, MedAngle1));
        x2 = round(this->Engine->Vector.TerminalX(0, this->ActiveMedianLength, MedAngle2));
        x3 = round(this->Engine->Vector.TerminalX(0, this->ActiveMedianLength, MedAngle1_180));
        x4 = round(this->Engine->Vector.TerminalX(0, this->ActiveMedianLength, MedAngle2_180));

        y1 = round(this->Engine->Vector.TerminalY(0, this->ActiveMedianLength, MedAngle1));
        y2 = round(this->Engine->Vector.TerminalY(0, this->ActiveMedianLength, MedAngle2));
        y3 = round(this->Engine->Vector.TerminalY(0, this->ActiveMedianLength, MedAngle1_180));
        y4 = round(this->Engine->Vector.TerminalY(0, this->ActiveMedianLength, MedAngle2_180));

        minX = (tmp1 = x1 < x2 ? x1 : x2) < (tmp2 = x3 < x4 ? x3 : x4) ? tmp1 : tmp2;
        maxX = (tmp2 = x4 < x3 ? x3 : x4) < (tmp1 = x2 < x1 ? x1 : x2) ? tmp1 : tmp2;
        minY = (tmp1 = y1 < y2 ? y1 : y2) < (tmp2 = y3 < y4 ? y3 : y4) ? tmp1 : tmp2;
        maxY = (tmp2 = y4 < y3 ? y3 : y4) < (tmp1 = y2 < y1 ? y1 : y2) ? tmp1 : tmp2;

        this->ActiveWidth = maxX - minX;
        this->ActiveHeight = maxY - minY;

        return 0;
    }
}