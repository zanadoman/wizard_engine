#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actors(engine& Engine) : Engine(Engine) {}

    uint64 engine::actors::New()
    {
        this->Actors += {actor(this->Engine)};

        return this->Actors.Length() - 1;
    }
}