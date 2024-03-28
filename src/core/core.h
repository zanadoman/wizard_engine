#pragma once

struct point
{
    double x;
    double y;
};

struct collision_box_base
{
    struct point top_left;
    struct point bot_right;
    struct point prev_top_left;
    struct point prev_bot_right;
};
