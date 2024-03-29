#pragma once

#include "WZE_SDL2.h"

#ifdef __cplusplus
    namespace core
    {
        extern "C"
        {
#endif

            struct CollisionBox
            {
                double m_curTopLeftX;
                double m_curTopLeftY;
                double m_curBotRightX;
                double m_curBotRightY;

                double m_prvTopLeftX;
                double m_prvTopLeftY;
                double m_prvBotRightX;
                double m_prvBotRightY;
            };

#ifdef __cplusplus
        }
    }
#endif
