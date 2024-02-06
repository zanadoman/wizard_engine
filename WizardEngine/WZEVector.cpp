#include "WizardEngine.hpp"

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
}