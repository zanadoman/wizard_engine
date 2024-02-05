#include "WizardEngine.hpp"

namespace wze
{
    engine::vector::vector(engine* Engine) : Engine(Engine) {}

    double engine::vector::Length(double X1, double Y1, double X2, double Y2)
    {
        double x, y;

        x = X2 - X1;
        y = Y2 - Y1;

        return sqrt((x) * (x) + (y) * (y));
    }

    double engine::vector::Angle(double X1, double Y1, double X2, double Y2)
    {
        double result;

        double x, y;

        x = X2 - X1;
        y = Y2 - Y1;

        result = acos((x) / sqrt((x) * (x) + (y) * (y))) * DEG;

        if (Y2 < Y1)
        {
            result = 360 - result;
        }

        return result;
    }

    double engine::vector::TerminalX(double InitialX, double Length, double Angle)
    {
        return InitialX + Length * cos(Angle * RAD);
    }

    double engine::vector::TerminalY(double InitialY, double Length, double Angle)
    {
        return InitialY + Length * sin(Angle * RAD);
    }
}