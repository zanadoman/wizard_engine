#include "WizardEngine.hpp"
#include <cmath>

using namespace neo;

namespace wze
{
    engine::camera::camera(engine* Engine) : Engine(Engine)
    {
        this->Smoothing = false;
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->Zoom = 1;
        this->XActor = 0;
        this->YActor = 0;
        this->X = 0;
        this->Y = 0;
        this->MinSpeedX = 0.25;
        this->MinSpeedY = 0.25;
        this->MaxSpeedX = 0.75;
        this->MaxSpeedY = 0.75;
        this->DecelerationRateX = 0.001;
        this->DecelerationRateY = 0.001;
        this->AccelerationRateX = 0.001;
        this->AccelerationRateY = 0.001;
        this->SlowDownRangeX = 0;
        this->SlowDownRangeY = 0;
        this->CurrentSpeedX = 0.25;
        this->CurrentSpeedY = 0.25;
    }

    double engine::camera::GetOffsetX()
    {
        return this->OffsetX;
    }

    double engine::camera::SetOffsetX(double OffsetX)
    {
        if (OffsetX != OffsetX)
        {
            printf("wze::engine.camera.SetOffsetX(): OffsetX must not be NaN\nParams: OffsetX: %lf\n", OffsetX);
            exit(1);
        }

        return this->OffsetX = OffsetX;
    }

    double engine::camera::GetOffsetY()
    {
        return this->OffsetY;
    }

    double engine::camera::SetOffsetY(double OffsetY)
    {
        if (OffsetY != OffsetY)
        {
            printf("wze::engine.camera.SetOffsetY(): OffsetY must not be NaN\nParams: OffsetY: %lf\n", OffsetY);
            exit(1);
        }

        return this->OffsetY = OffsetY;
    }

    double engine::camera::GetZoom()
    {
        return this->Zoom;
    }

    double engine::camera::SetZoom(double Zoom)
    {
        if (Zoom != Zoom)
        {
            printf("wze::engine.camera.SetZoom(): Zoom must not be NaN\nParams: Zoom: %lf\n", Zoom);
            exit(1);
        }
        if (Zoom <= 0)
        {
            printf("wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n", Zoom);
            exit(1);
        }

        return this->Zoom = Zoom;
    }

    uint64 engine::camera::Bind(uint64 ActorID)
    {
        if (ActorID == 0)
        {
            this->X = ActorID;
            this->Y = ActorID;

            return ActorID;
        }
        if (this->Engine->Actors.Actors.Length() <= ActorID || this->Engine->Actors.Actors[ActorID] == NULL)
        {
            printf("wze::engine.camera.Bind(): Actor does not exist\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }
        if (this->Engine->Actors.Actors[ActorID]->Layer == 0)
        {
            printf("wze::engine.camera.Bind(): Actor must not be in Layer 0\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }

        this->XActor = ActorID;
        this->YActor = ActorID;

        return ActorID;
    }

    uint64 engine::camera::BindX(uint64 ActorID)
    {
        if (ActorID == 0)
        {
            return this->XActor = ActorID;
        }
        if (this->Engine->Actors.Actors.Length() <= ActorID || this->Engine->Actors.Actors[ActorID] == NULL)
        {
            printf("wze::engine.camera.BindX(): Actor does not exist\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }
        if (this->Engine->Actors.Actors[ActorID]->Layer == 0)
        {
            printf("wze::engine.camera.BindX(): Actor must not be in Layer 0\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }

        return this->XActor = ActorID;
    }

    uint64 engine::camera::BindY(uint64 ActorID)
    {
        if (ActorID == 0)
        {
            return this->YActor = ActorID;
        }
        if (this->Engine->Actors.Actors.Length() <= ActorID || this->Engine->Actors.Actors[ActorID] == NULL)
        {
            printf("wze::engine.camera.BindY(): Actor does not exist\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }
        if (this->Engine->Actors.Actors[ActorID]->Layer == 0)
        {
            printf("wze::engine.camera.BindY(): Actor must not be in Layer 0\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }

        return this->YActor = ActorID;
    }

    uint8 engine::camera::Unbind()
    {
        this->XActor = 0;
        this->YActor = 0;

        return 0;
    }

    uint8 engine::camera::UnbindX()
    {
        this->XActor = 0;

        return 0;
    }

    uint8 engine::camera::UnbindY()
    {
        this->YActor = 0;

        return 0;
    }

    uint64 engine::camera::GetXActor()
    {
        return this->XActor;
    }

    uint64 engine::camera::GetYActor()
    {
        return this->YActor;
    }

    double engine::camera::GetX()
    {
        return this->X;
    }

    double engine::camera::GetY()
    {
        return this->Y;
    }

    double engine::camera::GetMinSpeedX()
    {
        return this->MinSpeedX;
    }

    double engine::camera::SetMinSpeedX(double MinSpeedX)
    {
        if (MinSpeedX != MinSpeedX)
        {
            printf("wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be NaN\nParams: MinSpeedX: %lf\n", MinSpeedX);
            exit(1);
        }
        if (MinSpeedX <= 0)
        {
            printf("wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be less than or equal to 0\nParams: MinSpeedX: %lf\n", MinSpeedX);
            exit(1);
        }
        if (this->MaxSpeedX < MinSpeedX)
        {
            printf("wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be greater than MaxSpeedX\nParams: MinSpeedX: %lf\n", MinSpeedX);
            exit(1);
        }

        if (this->CurrentSpeedX == this->MinSpeedX)
        {
            this->CurrentSpeedX = MinSpeedX;
        }

        return this->MinSpeedX = MinSpeedX;
    }

    double engine::camera::GetMinSpeedY()
    {
        return this->MinSpeedY;
    }

    double engine::camera::SetMinSpeedY(double MinSpeedY)
    {
        if (MinSpeedY != MinSpeedY)
        {
            printf("wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be NaN\nParams: MinSpeedY: %lf\n", MinSpeedY);
            exit(1);
        }
        if (MinSpeedY <= 0)
        {
            printf("wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be less than or equal to 0\nParams: MinSpeedY: %lf\n", MinSpeedY);
            exit(1);
        }
        if (this->MaxSpeedY < MinSpeedY)
        {
            printf("wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be greater than MaxSpeedY\nParams: MinSpeedY: %lf\n", MinSpeedY);
            exit(1);
        }

        if (this->CurrentSpeedY == this->MinSpeedY)
        {
            this->CurrentSpeedY = MinSpeedY;
        }

        return this->MinSpeedY = MinSpeedY;
    }

    double engine::camera::GetMaxSpeedX()
    {
        return this->MaxSpeedX;
    }

    double engine::camera::SetMaxSpeedX(double MaxSpeedX)
    {
        if (MaxSpeedX != MaxSpeedX)
        {
            printf("wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be NaN\nParams: MaxSpeedX: %lf\n", MaxSpeedX);
            exit(1);
        }
        if (MaxSpeedX <= 0)
        {
            printf("wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than or equal to 0\nParams: MaxSpeedX: %lf\n", MaxSpeedX);
            exit(1);
        }
        if (MaxSpeedX < this->MinSpeedX)
        {
            printf("wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than MinSpeedX\nParams: MaxSpeedX: %lf\n", MaxSpeedX);
            exit(1);
        }

        if (MaxSpeedX < this->CurrentSpeedX)
        {
            this->CurrentSpeedX = MaxSpeedX;
        }

        return this->MaxSpeedX = MaxSpeedX;
    }

    double engine::camera::GetMaxSpeedY()
    {
        return this->MaxSpeedY;
    }

    double engine::camera::SetMaxSpeedY(double MaxSpeedY)
    {
        if (MaxSpeedY != MaxSpeedY)
        {
            printf("wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be NaN\nParams: MaxSpeedY: %lf\n", MaxSpeedY);
            exit(1);
        }
        if (MaxSpeedY <= 0)
        {
            printf("wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than or equal to 0\nParams: MaxSpeedY: %lf\n", MaxSpeedY);
            exit(1);
        }
        if (MaxSpeedY < this->MinSpeedY)
        {
            printf("wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than MinSpeedY\nParams: MaxSpeedY: %lf\n", MaxSpeedY);
            exit(1);
        }

        if (MaxSpeedY < this->CurrentSpeedY)
        {
            this->CurrentSpeedY = MaxSpeedY;
        }

        return this->MaxSpeedY = MaxSpeedY;
    }

    double engine::camera::GetDecelerationRateX()
    {
        return this->DecelerationRateX;
    }

    double engine::camera::SetDecelerationRateX(double DecelerationRateX)
    {
        if (DecelerationRateX != DecelerationRateX)
        {
            printf("wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be NaN\nParams: DecelerationRateX: %lf\n", DecelerationRateX);
            exit(1);
        }
        if (DecelerationRateX <= 0)
        {
            printf("wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be less than or equal to 0\nParams: DecelerationRateX: %lf\n", DecelerationRateX);
            exit(1);
        }

        return this->DecelerationRateX = DecelerationRateX;
    }

    double engine::camera::GetDecelerationRateY()
    {
        return this->DecelerationRateY;
    }

    double engine::camera::SetDecelerationRateY(double DecelerationRateY)
    {
        if (DecelerationRateY != DecelerationRateY)
        {
            printf("wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be NaN\nParams: DecelerationRateY: %lf\n", DecelerationRateY);
            exit(1);
        }
        if (DecelerationRateY <= 0)
        {
            printf("wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be less than or equal to 0\nParams: DecelerationRateY: %lf\n", DecelerationRateY);
            exit(1);
        }

        return this->DecelerationRateY = DecelerationRateY;
    }

    double engine::camera::GetAccelerationRateX()
    {
        return this->AccelerationRateX;
    }

    double engine::camera::SetAccelerationRateX(double AccelerationRateX)
    {
        if (AccelerationRateX != AccelerationRateX)
        {
            printf("wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be NaN\nParams: AccelerationRateX: %lf\n", AccelerationRateX);
            exit(1);
        }
        if (AccelerationRateX <= 0)
        {
            printf("wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be less than or equal to 0\nParams: AccelerationRateX: %lf\n", AccelerationRateX);
            exit(1);
        }

        return this->AccelerationRateX = AccelerationRateX;
    }

    double engine::camera::GetAccelerationRateY()
    {
        return this->AccelerationRateY;
    }

    double engine::camera::SetAccelerationRateY(double AccelerationRateY)
    {
        if (AccelerationRateY != AccelerationRateY)
        {
            printf("wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be NaN\nParams: AccelerationRateY: %lf\n", AccelerationRateY);
            exit(1);
        }
        if (AccelerationRateY <= 0)
        {
            printf("wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be less than or equal to 0\nParams: AccelerationRateY: %lf\n", AccelerationRateY);
            exit(1);
        }

        return this->AccelerationRateY = AccelerationRateY;
    }

    double engine::camera::GetSlowDownRangeX()
    {
        return this->SlowDownRangeX;
    }

    double engine::camera::SetSlowDownRangeX(double SlowDownRangeX)
    {
        if (SlowDownRangeX != SlowDownRangeX)
        {
            printf("wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be NaN\nParams: SlowDownRangeX: %lf\n", SlowDownRangeX);
            exit(1);
        }
        if (SlowDownRangeX < 0)
        {
            printf("wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be less than 0\nParams: SlowDownRangeX: %lf\n", SlowDownRangeX);
            exit(1);
        }

        return this->SlowDownRangeX = SlowDownRangeX;
    }

    double engine::camera::GetSlowDownRangeY()
    {
        return this->SlowDownRangeY;
    }

    double engine::camera::SetSlowDownRangeY(double SlowDownRangeY)
    {
        if (SlowDownRangeY != SlowDownRangeY)
        {
            printf("wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be NaN\nParams: SlowDownRangeY: %lf\n", SlowDownRangeY);
            exit(1);
        }
        if (SlowDownRangeY < 0)
        {
            printf("wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be less than 0\nParams: SlowDownRangeY: %lf\n", SlowDownRangeY);
            exit(1);
        }

        return this->SlowDownRangeY = SlowDownRangeY;
    }

    uint8 engine::camera::Update()
    {
        double angle;
        bool moved;

        angle = 0;
        moved = false;

        if (this->Smoothing)
        {
            if (this->X == this->Engine->Actors.Actors[this->XActor]->X)
            {
                this->CurrentSpeedX = this->MinSpeedX;
            }
            if (this->Y == this->Engine->Actors.Actors[this->YActor]->Y)
            {
                this->CurrentSpeedY = this->MinSpeedY;
            }
            if (this->X != this->Engine->Actors.Actors[this->XActor]->X || this->Y != this->Engine->Actors.Actors[this->YActor]->Y)
            {
                angle = this->Engine->Vector.Angle(this->X, this->Y, this->Engine->Actors.Actors[this->XActor]->X, this->Engine->Actors.Actors[this->YActor]->Y);
            }
        }

        if (this->XActor != 0)
        {
            if (this->Smoothing && angle == angle)
            {
                if (this->X < this->Engine->Actors.Actors[this->XActor]->X)
                {
                    this->X = this->Engine->Vector.TerminalX(this->X, this->CurrentSpeedX * this->Engine->Timing.DeltaTime, angle);

                    if (this->Engine->Actors.Actors[this->XActor]->X < this->X)
                    {
                        this->X = this->Engine->Actors.Actors[this->XActor]->X;
                    }

                    moved = true;
                }
                else if (this->Engine->Actors.Actors[this->XActor]->X < this->X)
                {
                    this->X = this->Engine->Vector.TerminalX(this->X, this->CurrentSpeedX * this->Engine->Timing.DeltaTime, angle);

                    if (this->X < this->Engine->Actors.Actors[this->XActor]->X)
                    {
                        this->X = this->Engine->Actors.Actors[this->XActor]->X;
                    }

                    moved = true;
                }
            }
            else
            {
                this->X = this->Engine->Actors.Actors[this->XActor]->X;
            }
        }
        
        if (this->YActor != 0)
        {
            if (this->Smoothing && angle == angle)
            {
                if (this->Y < this->Engine->Actors.Actors[this->YActor]->Y)
                {
                    this->Y = this->Engine->Vector.TerminalY(this->Y, this->CurrentSpeedY * this->Engine->Timing.DeltaTime, angle);

                    if (this->Engine->Actors.Actors[this->YActor]->Y < this->Y)
                    {
                        this->Y = this->Engine->Actors.Actors[this->YActor]->Y;
                    }

                    moved = true;
                }
                else if (this->Engine->Actors.Actors[this->YActor]->Y < this->Y)
                {
                    this->Y = this->Engine->Vector.TerminalY(this->Y, this->CurrentSpeedY * this->Engine->Timing.DeltaTime, angle);

                    if (this->Y < this->Engine->Actors.Actors[this->YActor]->Y)
                    {
                        this->Y = this->Engine->Actors.Actors[this->YActor]->Y;
                    }

                    moved = true;
                }
            }
            else
            {
                this->Y = this->Engine->Actors.Actors[this->YActor]->Y;
            }
        }

        if (moved && this->MinSpeedX < this->CurrentSpeedX && this->Engine->Vector.Length(this->X, this->Y, this->Engine->Actors[this->XActor].GetX(), this->Engine->Actors[this->YActor].GetY()) <= this->SlowDownRangeX)
        {
            this->CurrentSpeedX -= this->DecelerationRateX * this->Engine->Timing.DeltaTime;

            if (this->CurrentSpeedX < this->MinSpeedX)
            {
                this->CurrentSpeedX = this->MinSpeedX;
            }
        }
        else if (moved && this->CurrentSpeedX < this->MaxSpeedX)
        {
            this->CurrentSpeedX += this->AccelerationRateX * this->Engine->Timing.DeltaTime;

            if (this->MaxSpeedX < this->CurrentSpeedX)
            {
                this->CurrentSpeedX = this->MaxSpeedX;
            }
        }
        if (moved && this->MinSpeedY < this->CurrentSpeedY && this->Engine->Vector.Length(this->X, this->Y, this->Engine->Actors[this->XActor].GetX(), this->Engine->Actors[this->YActor].GetY()) <= this->SlowDownRangeY)
        {
            this->CurrentSpeedY -= this->DecelerationRateY * this->Engine->Timing.DeltaTime;

            if (this->CurrentSpeedY < this->MinSpeedY)
            {
                this->CurrentSpeedY = this->MinSpeedY;
            }
        }
        else if (moved && this->CurrentSpeedY < this->MaxSpeedY)
        {
            this->CurrentSpeedY += this->AccelerationRateY * this->Engine->Timing.DeltaTime;

            if (this->MaxSpeedY < this->CurrentSpeedY)
            {
                this->CurrentSpeedY = this->MaxSpeedY;
            }
        }

        return 0;
    }

    SDL_Rect engine::camera::Transform(double X, double Y, uint16 Width, uint16 Height, double Layer)
    {
        SDL_Rect result;

        double cache;

        if (Layer == 0)
        {
            result.w = Width;
            result.h = Height;
            result.x = (sint32)floor(X) - (result.w >> 1);
            result.y = -((sint32)floor(Y) - this->Engine->Render.RenderHeight) - (result.h >> 1);
        }
        else
        {
            cache = this->Zoom * Layer;
            result.w = floor(Width * cache);
            result.h = floor(Height * cache);
            result.x = (sint32)floor((X - (this->X + this->OffsetX / cache)) * cache) - (result.w >> 1);
            result.y = -((sint32)floor((Y - (this->Y + this->OffsetY / cache)) * cache) - this->Engine->Render.RenderHeight) - (result.h >> 1);
        }

        return result;
    }
}