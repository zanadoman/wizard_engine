#include "WizardEngine.hpp"

namespace wze
{
    engine::camera::camera(engine* Engine) : Engine(Engine)
    {
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->Smoothing = false;
        this->XActor = 0;
        this->YActor = 0;
        this->CameraX = 0;
        this->CameraY = 0;
        this->Zoom = 1;
        this->MinSpeed = 1;
        this->MaxSpeed = 1;
        this->Acceleration = 1;
        this->CurrentSpeed = 1;
    }

    double engine::camera::GetZoom()
    {
        return this->Zoom;
    }

    double engine::camera::SetZoom(double Zoom)
    {
        if (Zoom <= 0)
        {
            printf("wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n", Zoom);
            exit(1);
        }

        return this->Zoom = Zoom;
    }

    uint64 engine::camera::GetXActor()
    {
        return this->XActor;
    }

    uint64 engine::camera::GetYActor()
    {
        return this->YActor;
    }

    uint8 engine::camera::Bind(uint64 Actor)
    {
        if (Actor == 0)
        {
            printf("wze::engine.camera.Bind(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors.Length() <= Actor || this->Engine->Actors.Actors[Actor] == NULL)
        {
            printf("wze::engine.camera.Bind(): Actor does not exist\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors[Actor]->Layer == 0)
        {
            printf("wze::engine.camera.Bind(): Actor must not be in Layer 0\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->XActor = Actor;
        this->YActor = Actor;

        return 0;
    }

    uint8 engine::camera::BindX(uint64 Actor)
    {
        if (Actor == 0)
        {
            printf("wze::engine.camera.BindX(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors.Length() <= Actor || this->Engine->Actors.Actors[Actor] == NULL)
        {
            printf("wze::engine.camera.BindX(): Actor does not exist\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors[Actor]->Layer == 0)
        {
            printf("wze::engine.camera.BindX(): Actor must not be in Layer 0\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->XActor = Actor;

        return 0;
    }

    uint8 engine::camera::BindY(uint64 Actor)
    {
        if (Actor == 0)
        {
            printf("wze::engine.camera.BindY(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors.Length() <= Actor || this->Engine->Actors.Actors[Actor] == NULL)
        {
            printf("wze::engine.camera.BindY(): Actor does not exist\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors[Actor]->Layer == 0)
        {
            printf("wze::engine.camera.BindY(): Actor must not be in Layer 0\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->YActor = Actor;

        return 0;
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

    double engine::camera::GetMinSpeed()
    {
        return this->MinSpeed;
    }

    double engine::camera::SetMinSpeed(double MinSpeed)
    {
        if (MinSpeed <= 0)
        {
            printf("wze::engine.camera.SetMinSpeed(): MinSpeed must not be less than or equal to 0\nParams: MinSpeed: %lf\n", MinSpeed);
            exit(1);
        }
        if (this->MaxSpeed < MinSpeed)
        {
            printf("wze::engine.camera.SetMinSpeed(): MinSpeed must not be greater than MaxSpeed\nParams: MinSpeed: %lf\n", MinSpeed);
            exit(1);
        }

        if (this->CurrentSpeed == this->MinSpeed)
        {
            this->CurrentSpeed = MinSpeed;
        }

        return this->MinSpeed = MinSpeed;
    }

    double engine::camera::GetMaxSpeed()
    {
        return this->MaxSpeed;
    }

    double engine::camera::SetMaxSpeed(double MaxSpeed)
    {
        if (MaxSpeed <= 0)
        {
            printf("wze::engine.camera.SetMaxSpeed(): MaxSpeed must not be less than or equal to 0\nParams: MaxSpeed: %lf\n", MaxSpeed);
            exit(1);
        }
        if (MaxSpeed < this->MinSpeed)
        {
            printf("wze::engine.camera.SetMaxSpeed(): MaxSpeed must not be less than MinSpeed\nParams: MaxSpeed: %lf\n", MaxSpeed);
            exit(1);
        }

        if (MaxSpeed < this->CurrentSpeed)
        {
            this->CurrentSpeed = MaxSpeed;
        }

        return this->MaxSpeed = MaxSpeed;
    }

    double engine::camera::GetAcceleration()
    {
        return this->Acceleration;
    }

    double engine::camera::SetAcceleration(double Acceleration)
    {
        if (Acceleration <= 0)
        {
            printf("wze::engine.camera.SetAcceleration(): Acceleration must not be less than or equal to 0\nParams: Acceleration: %lf\n", Acceleration);
            exit(1);
        }

        return this->Acceleration = Acceleration;
    }

    uint8 engine::camera::Update()
    {
        double angle;
        bool moved;

        angle = 0;
        moved = false;

        if (this->Smoothing)
        {
            if (this->CameraX == this->Engine->Actors.Actors[this->XActor]->X && this->CameraY == this->Engine->Actors.Actors[this->YActor]->Y)
            {
                this->CurrentSpeed = this->MinSpeed;
            }
            else
            {
                angle = this->Engine->Vector.Angle(this->CameraX, this->CameraY, this->Engine->Actors.Actors[this->XActor]->X, this->Engine->Actors.Actors[this->YActor]->Y);
            }
        }

        if (this->XActor != 0)
        {
            if (this->Smoothing && angle == angle)
            {
                if (this->CameraX < this->Engine->Actors.Actors[this->XActor]->X)
                {
                    this->CameraX = this->Engine->Vector.TerminalX(this->CameraX, this->CurrentSpeed * this->Engine->Timing.DeltaTime, angle);

                    if (this->Engine->Actors.Actors[this->XActor]->X < this->CameraX)
                    {
                        this->CameraX = this->Engine->Actors.Actors[this->XActor]->X;
                    }

                    moved = true;
                }
                else if (this->Engine->Actors.Actors[this->XActor]->X < this->CameraX)
                {
                    this->CameraX = this->Engine->Vector.TerminalX(this->CameraX, this->CurrentSpeed * this->Engine->Timing.DeltaTime, angle);

                    if (this->CameraX < this->Engine->Actors.Actors[this->XActor]->X)
                    {
                        this->CameraX = this->Engine->Actors.Actors[this->XActor]->X;
                    }

                    moved = true;
                }
            }
            else
            {
                this->CameraX = this->Engine->Actors.Actors[this->XActor]->X;
            }
        }
        
        if (this->YActor != 0)
        {
            if (this->Smoothing && angle == angle)
            {
                if (this->CameraY < this->Engine->Actors.Actors[this->YActor]->Y)
                {
                    this->CameraY = this->Engine->Vector.TerminalY(this->CameraY, this->CurrentSpeed * this->Engine->Timing.DeltaTime, angle);

                    if (this->Engine->Actors.Actors[this->YActor]->Y < this->CameraY)
                    {
                        this->CameraY = this->Engine->Actors.Actors[this->YActor]->Y;
                    }

                    moved = true;
                }
                else if (this->Engine->Actors.Actors[this->YActor]->Y < this->CameraY)
                {
                    this->CameraY = this->Engine->Vector.TerminalY(this->CameraY, this->CurrentSpeed * this->Engine->Timing.DeltaTime, angle);

                    if (this->CameraY < this->Engine->Actors.Actors[this->YActor]->Y)
                    {
                        this->CameraY = this->Engine->Actors.Actors[this->YActor]->Y;
                    }

                    moved = true;
                }
            }
            else
            {
                this->CameraY = this->Engine->Actors.Actors[this->YActor]->Y;
            }
        }

        if (moved && this->CurrentSpeed < this->MaxSpeed)
        {
            this->CurrentSpeed += this->Acceleration * this->Engine->Timing.DeltaTime;

            if (this->MaxSpeed < this->CurrentSpeed)
            {
                this->CurrentSpeed = this->MaxSpeed;
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
            result.x = (sint32)round(X) - (result.w >> 1);
            result.y = -((sint32)round(Y) - this->Engine->Render.RenderHeight) - (result.h >> 1);
        }
        else
        {
            cache = this->Zoom * Layer;
            result.w = round(Width * cache);
            result.h = round(Height * cache);
            result.x = (sint32)round((X - (this->CameraX + this->OffsetX / cache)) * cache) - (result.w >> 1);
            result.y = -((sint32)round((Y - (this->CameraY + this->OffsetY / cache)) * cache) - this->Engine->Render.RenderHeight) - (result.h >> 1);
        }

        return result;
    }
}