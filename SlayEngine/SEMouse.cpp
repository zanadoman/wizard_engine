#include "SlayEngine.hpp"

namespace slay
{
    engine::mouse::mouse() : Sensitivity(1) {}

    uint8 engine::mouse::SetSensitivity(double Sensitivity)
    {
        this->Sensitivity = Sensitivity;

        return 0;
    }
}