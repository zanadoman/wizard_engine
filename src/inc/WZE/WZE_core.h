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
            struct ColliderBox
            {
                double cur_tl_x;
                double cur_tl_y;
                double cur_br_x;
                double cur_br_y;

                double prv_tl_x;
                double prv_tl_y;
                double prv_br_x;
                double prv_br_y;

                uint_fast16_t force;
                uint_fast16_t drag;
            };
#ifdef __cplusplus
        }
    }
#endif
