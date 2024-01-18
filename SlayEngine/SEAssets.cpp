#include "Includes/SDL_image.h"
#include "Includes/SDL_render.h"
#include "Includes/SDL_surface.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::assets::assets(engine& Engine) : Engine(Engine) {}

    uint64 engine::assets::LoadTexture(const char* Path)
    {
        SDL_Surface* tmp;

        if (Path == NULL)
        {
            printf("engine.assets.LoadTexture(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((tmp = IMG_Load(Path)) == NULL)
        {
            printf("engine.assets.LoadTexture(): IMG_Load() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        if ((*(this->Textures += {SDL_CreateTextureFromSurface(Engine.Window.Renderer, tmp)}))[this->Textures.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Textures.Length() - 1;
    }
}