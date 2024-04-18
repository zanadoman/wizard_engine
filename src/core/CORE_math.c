/*
 * This file is part of Wizard Engine (https://github.com/zanadoman/Wizard-Engine).
 * Copyright (c) 2024 Zana Domán.
 *
 * Wizard Engine is free software: you can redistribute it and/or modify  
 * it under the terms of the GNU General Public License as published by  
 * the Free Software Foundation, version 3.
 *
 * Wizard Engine is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with Wizard Engine. If not, see https://www.gnu.org/licenses/licenses.html.
 */

#include "../../inc/WZE_CORE/CORE_math.h"

/**
 * @file math.c
 * @author Zana Domán
 *
 * @brief Calculates the distance between two points.
 *
 * @param init_x Initial point X.
 * @param init_y Initial point Y.
 * @param term_x Terminal point X.
 * @param term_y Terminal point Y.
 * @return Distance between points.
 */
inline float GetDistance(register const float init_x,
                         register const float init_y,
                         register float       term_x,
                         register float       term_y)
{
    term_x -= init_x;
    term_y -= init_y;

    return Pythagoras(term_x, term_y);
}

/**
 * @file math.c
 * @author Zana Domán
 *
 * @brief Calculates the angle of a vector.
 *
 * @bug The function can return invalid result, such as NAN or INFINITY.
 *
 * @param init_x Initial point X.
 * @param init_y Initial point Y.
 * @param term_x Terminal point X.
 * @param term_y Terminal point Y.
 * @return Angle of vector in radians.
 *
 * @note The function uses term_x and term_y as temporary storage during
 *       calculation.
 */
inline float GetAngle(register const float init_x,
                      register const float init_y, 
                      register float       term_x,
                      register float       term_y)
{
    term_x -= init_x;

    if (term_y < init_y)
    {
        term_y -= init_y;

        return RAD_MAX - acosf(term_x / Pythagoras(term_x, term_y));
    }
    else
    {
        term_y -= init_y;

        return acosf(term_x / Pythagoras(term_x, term_y));
    }
}


/**
 * @file math.c
 * @author Zana Domán
 *
 * @brief Calculates the bounding box of a rotated rectangle.
 * @details Calculations are based on median length and diagonal angles.
 *          In the first step, all endpoints of the rotated diagonals are
 *          calculated. Then the bounding box is formed by using the farthest
 *          endpoints.
 *
 * @bug The function can give invalid results, such as NAN or INFINITY.
 *
 * @param med_len Half of diagonal length.
 * @param diag_angle1 Angle of one diagonal in radians.
 * @param diag_angle2 Angle of other diagonal in radians.
 * @param angle Angle of rotation in radians.
 * @param res_width Width of the bounding box.
 * @param res_height Height of the bounding box.
 *
 * @note The function uses res_width and res_height as temporary storage
 *       during calculation.
 * @warning You must ensure that the addresses of res_with and res_height are
 *          valid.
 */
inline void GetBoundingBox(register const float  med_len,
                           register const float  diag_angle1,
                           register const float  diag_angle2,
                           register const float  angle,
                           register uint16_t    *res_width,
                           register uint16_t    *res_height)
{
    #define HALF_RAD_MAX 3.1415927f

    register const float angle1 = diag_angle1 + angle;
    register const float angle2 = diag_angle2 + angle;
    register const float angle3 = angle1 + HALF_RAD_MAX;
    register const float angle4 = angle2 + HALF_RAD_MAX;

    #undef HALF_RAD_MAX

    {
        register const int32_t x1 = (int32_t)roundf(med_len * cosf(angle1));
        register const int32_t x2 = (int32_t)roundf(med_len * cosf(angle2));
        register const int32_t x3 = (int32_t)roundf(med_len * cosf(angle3));
        register const int32_t x4 = (int32_t)roundf(med_len * cosf(angle4));

        {
            register const int32_t cache1 = x1 < x2 ? x2 : x1;
            register const int32_t cache2 = x3 < x4 ? x4 : x3;
            *res_width = cache1 < cache2 ? cache2 : cache1;
        }
        
        {
            register const int32_t cache1 = x1 < x2 ? x1 : x2;
            register const int32_t cache2 = x3 < x4 ? x3 : x4;
            *res_width -= cache1 < cache2 ? cache1 : cache2;
        }
    }

    {
        register const int32_t y1 = (int32_t)roundf(med_len * sinf(angle1));
        register const int32_t y2 = (int32_t)roundf(med_len * sinf(angle2));
        register const int32_t y3 = (int32_t)roundf(med_len * sinf(angle3));
        register const int32_t y4 = (int32_t)roundf(med_len * sinf(angle4));

        {
            register const int32_t cache1 = y1 < y2 ? y2 : y1;
            register const int32_t cache2 = y3 < y4 ? y4 : y3;
            *res_height = cache1 < cache2 ? cache2 : cache1;
        }
        
        {
            register const int32_t cache1 = y1 < y2 ? y1 : y2;
            register const int32_t cache2 = y3 < y4 ? y3 : y4;
            *res_height -= cache1 < cache2 ? cache1 : cache2;
        }
    }
}
