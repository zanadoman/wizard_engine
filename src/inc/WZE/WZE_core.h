#pragma once

#include <stdint.h>
#include "WZE_SDL2.h"
#include "WZE_def.h"

#ifdef __cplusplus
    namespace core
    {
        extern "C"
        {
#endif
            typedef struct CollisionBox
            {
                double m_curTopLeftX;
                double m_curTopLeftY;
                double m_curBotRightX;
                double m_curBotRightY;

                double m_prvTopLeftX;
                double m_prvTopLeftY;
                double m_prvBotRightX;
                double m_prvBotRightY;

                uint_fast64_t m_force;
                uint_fast64_t m_resistance;
            } CollisionBox_t;
#ifdef __cplusplus
        }
    }
#endif
