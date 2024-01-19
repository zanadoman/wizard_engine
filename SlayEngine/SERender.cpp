#include "Includes/SDL_render.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::render::render(engine& Engine) : Engine(Engine) {}

    uint8 engine::render::Update()
    {
        this->OpenFrame();

        SDL_Rect obj;
        obj.x = 400; obj.y = 400; obj.w = 100; obj.h = 100;
        this->Engine.Camera.Apply(&obj, 0.2);
        obj.y = this->ScreenY(obj.y);
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

    sint32 engine::render::ScreenY(sint32 Y)
    {
        return (Y - this->ScreenYCache) * -1;
    }
}