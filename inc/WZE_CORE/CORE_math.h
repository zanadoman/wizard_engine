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

#pragma once

#include "stdint.h"
#include "math.h"

#ifdef __cplusplus
    namespace wze { extern "C" {
#endif

// A single precision EPSILON value decided by fate.
#define EPSILON 0.01f

// Single precision value of PI.
#define PI 3.1415927f

// Single precision full rotation in degrees.
#define DEG_MAX 360.0f

// Single precision full rotation in radians.
#define RAD_MAX 6.2831855f

/**
 * @file math.h
 * @author Zana Domán
 *
 * @brief Checks if two floats are equal within EPSILON.
 *
 * @param a First float.
 * @param b Second float.
 * @return True if equal, false otherwise.
 */
#define IsEqual(a, b) (a - EPSILON <= b && b <= a + EPSILON)

/**
 * @file math.h
 * @author Zana Domán
 *
 * @brief If x is not normal returns fallback.
 *
 * @param x Value to check.
 * @param fallback Replacement value.
 * @return x if x is normal, fallback otherwise.
 *
 * @warning fallback is unchecked.
 */
#define IfNaN(x, fallback) (isnormal(x) || x == 0.0f ? x : fallback)

/**
 * @file math.h
 * @author Zana Domán
 *
 * @brief Converts radians to degrees.
 *
 * @param x Angle in radians.
 * @return Angle in degrees.
 */
#define ToDEG(x) (x * 57.29578f)

/**
 * @file math.h
 * @author Zana Domán
 *
 * @brief Converts degrees to raidans.
 *
 * @param x Angle in degrees.
 * @return Angle in radians.
 */
#define ToRAD(x) (x * 0.017453292f)

/**
 * @file math.h
 * @author Zana Domán
 *
 * @brief Pythagoras theorem.
 *
 * @param a Length of adjacent side.
 * @param b Length of opposite side.
 * @return Length of hypotenuse side.
 */
#define Pythagoras(a, b) (sqrtf(a * a + b * b))

/**
 * @file math.h
 * @author Zana Domán
 *
 * @brief Returns the X value of terminal point.
 *
 * @bug The macro can return invalid result, such as NAN or INFINITY.
 * 
 * @param init_x Initial point X.
 * @param dist Distance between initial and terminal points.
 * @param angle Angle of the vector in radians.
 * @return Terminal point X.
 */
#define GetTermX(init_x, dist, angle) (init_x + dist * cosf(angle))

/**
 * @file math.h
 * @author Zana Domán
 *
 * @brief Returns the Y value of terminal point.
 * 
 * @bug The macro can return invalid result, such as NAN or INFINITY.
 *
 * @param init_y Initial point Y.
 * @param dist Distance between initial and terminal points.
 * @param angle Angle of the vector in radians.
 * @return Terminal point Y.
 */
#define GetTermY(init_y, dist, angle) (init_y + dist * sinf(angle))

/**
 * @file math.h
 * @author Zana Domán
 *
 * @brief Reutrns a random number between [min, max).
 *
 * @param min Minimum value (inclusive).
 * @param max Maximum value (exclusive).
 * @return Random number.
 *
 * @warning Possible divison by zero.
 */
#define NextRandom(min, max) (rand() % (max - min) + min)

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
float GetDistance(const float init_x, const float init_y, float term_x, float term_y);

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
float GetAngle(const float init_x, const float init_y, float term_x, float term_y); 

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
void GetBoundingBox(const float med_len, const float diag_angle1, const float diag_angle2,
                    const float angle, uint16_t *res_width, uint16_t *res_height);

#ifdef __cplusplus
    }}
#endif
