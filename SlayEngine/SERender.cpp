#include "SlayEngine.hpp"

namespace slay
{
    engine::render::render(engine& Engine) : Engine(Engine) {}

    uint8 engine::render::Update()
    {
        this->OpenFrame();

        this->CloseFrame();

        return 0;
    }

    uint8 engine::render::OpenFrame()
    {
        if (SDL_SetRenderDrawColor(this->Engine.Window.Renderer, 0, 0, 0, 255) != 0)
        {
            printf("engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\n");
            return 1;
        }
        if (SDL_RenderClear(this->Engine.Window.Renderer) != 0)
        {
            printf("engine.render.OpenFrame(): SDL_RenderClear() failed\n");
            return 1;
        }

        return 0;
    }

    uint8 engine::render::CloseFrame()
    {
        SDL_RenderPresent(this->Engine.Window.Renderer);

        return 0;
    }

    sint32 engine::render::ScreenY(double Y)
    {
        return (round(Y) - this->ScreenYCache) * -1;
    }

    sint32 engine::render::ScreenY(sint32 Y)
    {
        return (Y - this->ScreenYCache) * -1;
    }
}