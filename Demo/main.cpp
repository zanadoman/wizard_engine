#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 1920, 1080, 1000 / 165);

    double x, y;

    while (Engine.Update())
    {
        x = Engine.Mouse.GetX();
        y = Engine.Mouse.GetY();

        Engine.Camera.Apply(&x, &y, 1.0);

        printf("X: %lf, Y: %lf\n", x, y);
    }

    return 0;
}