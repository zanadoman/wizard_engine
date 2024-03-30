#pragma once

#include <vector>
#include "WZE_core.h"

namespace wze
{
    class CollisionBox : private core::CollisionBox
    {
        private: static std::vector<std::vector<core::CollisionBox*>> m_layers;
    
        public: CollisionBox()
        {
            m_force = 12;
        }
    };

    class Engine
    {
        public: Engine()
        {
            (void)SDL_Init(0);
        }

        public: ~Engine()
        {
            SDL_Quit();
        }
    };
}
