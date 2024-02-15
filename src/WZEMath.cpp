#include "WizardEngine.hpp"
#include <ctime>

using namespace neo;

namespace wze
{
    engine::math::math(engine* Engine) : Engine(Engine)
    {
        srand(time(NULL));
    }

    bool engine::math::Equals(double Value1, double Value2)
    {
        return (Value1 - EPSILON <= Value2 && Value2 <= Value1 + EPSILON);
    }

    sint32 engine::math::Random(sint32 Min, sint32 Max)
    {
        if (Max <= Min)
        {
            printf("wze::engine::math::Random(): Max must not be less than or equal to Min\nParams: Min: %d, Max: %d\n", Min, Max);
            exit(1);
        }

        return rand() % (Max - Min) + Min;
    }
}