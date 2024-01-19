#include "demo.hpp"

#undef main

using namespace slay;

typedef enum
{
    PLAYER
} actors;

class assets
{
    engine& Engine;

    public:
        assets(engine& Engine) : Engine(Engine)
        {
            PlayerTexture = this->Engine.Assets.LoadTexture("test.png");
        }

        uint64 PlayerTexture;
};

class player
{
    engine& Engine;
    assets& Assets;

    public:
        player(engine& Engine, assets& Assets) : Engine(Engine), Assets(Assets)
        {
            Actor = this->Engine.Actors.New(PLAYER);
            Texture = this->Engine.Actors[this->Actor].NewTexture();

            this->Engine.Actors[this->Actor].SetWidth(20);
            this->Engine.Actors[this->Actor].SetHeight(50);

            this->Engine.Actors[this->Actor].GetTexture(this->Texture).SetTextureID(this->Assets.PlayerTexture);
            this->Engine.Actors[this->Actor].GetTexture(this->Texture).Width = 20;
            this->Engine.Actors[this->Actor].GetTexture(this->Texture).Height = 50;
            this->Engine.Actors[this->Actor].GetTexture(this->Texture).Layer = 1;
        }

    private:
        uint64 Actor;
        uint64 Texture;
};

sint32 main(sint32 argc, char* *argv)
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);



    while (Engine.Update())
    {
        
    }

    return 0;
}