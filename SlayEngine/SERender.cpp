#include "Includes/SDL_rect.h"
#include "Includes/SDL_render.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::render::render(engine& Engine) : Engine(Engine) {}

    uint8 engine::render::Update()
    {
        this->OpenFrame();

        double x, y;
        uint16 width, height;
        SDL_Rect obj;

        x = 200; y = 200; width = 100; height = 100;
        this->Engine.Camera.Apply(&x, &y, &width, &height, 0.1);
        obj.x = x; obj.y = y; obj.w = width; obj.h = height;
        SDL_SetRenderDrawColor(Engine.Window.Renderer, 0, 255, 0, 255);
        SDL_RenderFillRect(Engine.Window.Renderer, &obj);

        x = 200; y = 200; width = 100; height = 100;
        this->Engine.Camera.Apply(&x, &y, &width, &height, 2);
        obj.x = x; obj.y = y; obj.w = width; obj.h = height;
        SDL_SetRenderDrawColor(Engine.Window.Renderer, 255, 0, 0, 255);
        SDL_RenderFillRect(Engine.Window.Renderer, &obj);


        this->CloseFrame();

        return 0;
    }

    uint8 engine::render::OpenFrame()
    {
        if (SDL_SetRenderDrawColor(Engine.Window.Renderer, 0, 0, 0, 255) != 0)
        {
            printf("engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\n");
            return 1;
        }
        if (SDL_RenderClear(Engine.Window.Renderer) != 0)
        {
            printf("engine.render.OpenFrame(): SDL_RenderClear() failed\n");
            return 1;
        }

        return 0;
    }

    uint8 engine::render::CloseFrame()
    {
        SDL_RenderPresent(Engine.Window.Renderer);

        return 0;
    }
}