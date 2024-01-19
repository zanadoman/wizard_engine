#include "Includes/SDL_render.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::render::render(engine& Engine) : Engine(Engine) {}

    uint8 engine::render::Update()
    {
        this->OpenFrame();

        SDL_Rect obj;
        obj.x = 0; obj.y = this->ScreenY(1079); obj.w = 1000; obj.h = 1000;
        SDL_SetRenderDrawColor(Engine.Window.Renderer, 255, 255, 255, 255);
        SDL_RenderDrawRect(this->Engine.Window.Renderer, &obj);

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
}