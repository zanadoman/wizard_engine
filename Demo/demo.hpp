#pragma once

#include "../WizardEngine/WizardEngine.hpp"

using namespace neo;
using namespace wze;

class game
{
    engine* Engine;

    public:
        uint8 Update();
        game(engine* Engine);
        ~game();

    private:
};