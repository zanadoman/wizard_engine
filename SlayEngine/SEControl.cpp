#include "SlayEngine.hpp"

namespace slay
{
    bool engine::Update()
    {
        SDL_Event event;
        uint64 i;

        for (i = 0; SDL_PollEvent(&event); i++)
        {
            if (event.type == SDL_QUIT)
            {
                return false;
            }

            if (this->EventQueue.Length() == i)
            {
                this->EventQueue += {event};
            }
            else
            {
                this->EventQueue[i] = {event};
            }
        }
        if (i < this->EventQueue.Length())
        {
            this->EventQueue.Remove(i, this->EventQueue.Length() - i);
        }

        this->UpdateInput();
        this->Mouse.Update();

        return true;
    }
}