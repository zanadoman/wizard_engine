#include "SlayEngine.hpp"

namespace slay
{
    engine::vector::vector(engine& Engine) : Engine(Engine) {}

    double engine::vector::Length(double X1, double Y1, double X2, double Y2)
    {
        return sqrt((X2 - X1) * (X2 - X1) + (Y2 - Y1) * (Y2 - Y1));
    }

    double engine::vector::Angle(double X1, double Y1, double X2, double Y2)
    {
        double result;

        result = acos((X2 - X1) / this->Length(X1, Y1, X2, Y2)) * 180 / PI;
        if (Y2 < Y1)
        {
            result = 360 - result;
        }

        return result;
    }

    uint8 engine::vector::Apply(double Distance, double Angle, double* X, double* Y)
    {
        double cache;

        cache = Angle * PI / 180;
        *X += Distance * cos(cache);
        *Y += Distance * sin(cache);

        return 0;
    }

    uint8 engine::vector::Apply(double Distance, double Angle, uint64 Actor)
    {
        double cache;

        if (this->Engine.Actors.Actors.Length() <= Actor || this->Engine.Actors.Actors[Actor] == NULL)
        {
            printf("engine.vector.Apply(): Actor does not exists\nParams: Distance: %lf, Angle: %lf, Actor: %lld\n", Distance, Angle, Actor);
            exit(1);
        }

        cache = Angle * PI / 180;
        this->Engine.Actors.Actors[Actor]->X += Distance * cos(cache);
        this->Engine.Actors.Actors[Actor]->Y += Distance * sin(cache);

        return 0;
    }

    uint8 engine::vector::Terminal(double InitialX, double InitialY, double Distance, double Angle, double* TerminalX, double* TerminalY)
    {
        double cache;

        cache = Angle * PI / 180;
        *TerminalX = InitialX + Distance * cos(cache);
        *TerminalY = InitialY + Distance * sin(cache);

        return 0;
    }

    uint8 engine::vector::Terminal(double InitialX, double InitialY, double Distance, double Angle, uint64 Actor)
    {
        double cache;

        if (this->Engine.Actors.Actors.Length() <= Actor || this->Engine.Actors.Actors[Actor] == NULL)
        {
            printf("engine.vector.Terminal(): Actor does not exists\nParams: InitialX: %lf, InitialY: %lf, Distance: %lf, Angle: %lf, Actor: %lld\n", InitialX, InitialY, Distance, Angle, Actor);
            exit(1);
        }

        cache = Angle * PI / 180;
        this->Engine.Actors.Actors[Actor]->X = InitialX + Distance * cos(cache);
        this->Engine.Actors.Actors[Actor]->Y = InitialY + Distance * sin(cache);

        return 0;
    }
}