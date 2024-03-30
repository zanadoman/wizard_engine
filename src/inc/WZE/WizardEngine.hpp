#include "WZE_core.h"

namespace wze
{
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
