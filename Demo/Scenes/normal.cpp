#include "../demo.hpp"

normal::normal(engine* Engine, game* Game) : Engine(Engine), Game(Game),
Background(this->Engine->Actors.New(0, ACT_DECOR, 0, 0, 0, 0, 1))

{

}