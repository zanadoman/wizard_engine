#include "WizardEngine.hpp"

namespace wze
{
    engine::actors::actor::overlapboxes::overlapboxes(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), OverlapBoxes({(overlapbox*)NULL}) {}

    engine::actors::actor::overlapboxes::~overlapboxes()
    {
        for (uint64 i = 1; i < this->OverlapBoxes.Length(); i++)
        {
            delete this->OverlapBoxes[i];
        }
    }

    engine::actors::actor::overlapboxes::overlapbox& engine::actors::actor::overlapboxes::operator [] (uint64 ID)
    {
        if (ID == 0)
        {
            printf("wze::engine.actors[].overlapboxes[]: Illegal access to NULL OverlapBox\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->OverlapBoxes.Length() <= ID || this->OverlapBoxes[ID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[]: OverlapBox does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->OverlapBoxes[ID];
    }

    engine::actors::actor::overlapboxes::overlapbox::overlapbox(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor) {}

    engine::actors::actor::overlapboxes::overlapbox::~overlapbox() {}
}