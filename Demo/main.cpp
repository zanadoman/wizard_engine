#include "demo.hpp"

#undef main

using namespace neo;

sint32 main(sint32 argc, char* *argv)
{
    string str = {"Hello, World!"};

    printf("%s\n", str());

    return 0;
}