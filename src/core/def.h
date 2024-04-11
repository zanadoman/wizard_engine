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

#ifdef __cplusplus
    namespace wze { extern "C" {
#endif

#if defined(__GNUC__) || defined(__GNUG__)
    #define INLINE __attribute__((always_inline))
#endif

#if defined(_MSC_VER) || defined(_MSC_FULL_VER)
    #define INLINE __forceinline
#endif

#ifdef __cplusplus
    }}
#endif
