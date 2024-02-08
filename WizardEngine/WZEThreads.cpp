#include "WizardEngine.hpp"

using namespace neo;

namespace wze
{
    engine::threads::threads(engine* Engine) : Engine(Engine), Threads({(SDL_Thread*)NULL}) {}

    uint64 engine::threads::Start(sint32(*Function)(void*), void* Parameter)
    {
        if (Function == NULL)
        {
            printf("wze::engine.threads.Start(): Function must not be NULL\nParams: Function: %p, Parameter: %p\n", Function, Parameter);
            exit(1);
        }

        for (uint64 i = 1; i < this->Threads.Length(); i++)
        {
            if (this->Threads[i] == NULL)
            {
                if ((this->Threads[i] = SDL_CreateThread(Function, NULL, Parameter)) == NULL)
                {
                    printf("wze::engine.threads.Start(): SDL_CreateThread failed\nParams: Function: %p, Parameter: %p\n", Function, Parameter);
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Threads += {SDL_CreateThread(Function, NULL, Parameter)})[this->Threads.Length() - 1] == NULL)
        {
            printf("wze::engine.threads.Start(): SDL_CreateThread failed\nParams: Function: %p, Parameter: %p\n", Function, Parameter);
            exit(1);
        }

        return this->Threads.Length() - 1;
    }

    sint32 engine::threads::Wait(uint64 ID)
    {
        sint32 result;

        uint64 i;

        if (ID == 0)
        {
            printf("wze::engine.threads.Wait(): Illegal use of NULL thread\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Threads.Length() <= ID || this->Threads[ID] == NULL)
        {
            printf("wze::engine.threads.Wait(): Thread does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        SDL_WaitThread(this->Threads[ID], &result);
        this->Threads[ID] = NULL;

        if (this->Threads[this->Threads.Length() - 1] == NULL && 1 < this->Threads.Length())
        {
            for (i = this->Threads.Length(); 1 < i; i--)
            {
                if (this->Threads[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Threads.Remove(i, this->Threads.Length() - i);
        }

        return result;
    }

    uint8 engine::threads::Purge(std::initializer_list<uint64> Keep)
    {
        uint64 i;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] != 0 && (this->Threads.Length() <= Keep.begin()[i] || this->Threads[Keep.begin()[i]] == NULL))
            {
                printf("wze::engine.threads.Purge(): Thread does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Threads.Length(); i++)
        {
            if (!initializer_list_Contains(Keep, {i}))
            {
                SDL_WaitThread(this->Threads[i], NULL);
                this->Threads[i] = NULL;
            }
        }

        if (this->Threads[this->Threads.Length() - 1] == NULL && 1 < this->Threads.Length())
        {
            for (i = this->Threads.Length(); 1 < i; i--)
            {
                if (this->Threads[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Threads.Remove(i, this->Threads.Length() - i);
        }

        return 0;
    }

    uint8 engine::threads::Purge(array<uint64>* Keep)
    {
        uint64 i;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] != 0 && (this->Threads.Length() <= (*Keep)[i] || this->Threads[(*Keep)[i]] == NULL))
            {
                printf("wze::engine.threads.Purge(): Thread does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Threads.Length(); i++)
        {
            if (!Keep->Contains({i}))
            {
                SDL_WaitThread(this->Threads[i], NULL);
                this->Threads[i] = NULL;
            }
        }

        if (this->Threads[this->Threads.Length() - 1] == NULL && 1 < this->Threads.Length())
        {
            for (i = this->Threads.Length(); 1 < i; i--)
            {
                if (this->Threads[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Threads.Remove(i, this->Threads.Length() - i);
        }

        return 0;
    }
}