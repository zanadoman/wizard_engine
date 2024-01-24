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

    double engine::vector::TerminalX(double InitialX, double Length, double Angle)
    {
        return InitialX + Length * cos(Angle * PI / 180);
    }

    double engine::vector::TerminalY(double InitialY, double Length, double Angle)
    {
        return InitialY + Length * sin(Angle * PI / 180);
    }
}