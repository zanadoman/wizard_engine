#include "SlayEngine.hpp"

namespace slay
{
    engine::audio::audio(engine& Engine) : Engine(Engine)
    {
        this->GlobalVolume = 1;
    }

    double engine::audio::GetGlobalVolume()
    {
        return this->GlobalVolume;
    }

    double engine::audio::SetGlobalVolume(double GlobalVolume)
    {
        if (GlobalVolume < 0 || 1 < GlobalVolume)
        {
            printf("engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\nParams: Volume: %lf\n", GlobalVolume);
            exit(1);
        }

        return this->GlobalVolume = GlobalVolume;
    }

    uint8 engine::audio::Play(uint64 ID, uint16 Channel, double Volume)
    {
        if (Volume < 0 || 1 < Volume)
        {
            printf("engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf\n", ID, Channel, Volume);
            exit(1);
        }
        if (ID == 0)
        {
            return 0;
        }
        if (this->Engine.Assets.Sounds.Length() <= ID || this->Engine.Assets.Sounds[ID] == NULL)
        {
            printf("engine.audio.Play(): WAV does not exists\nParams: ID: %lld, Channel: %d, Volume: %lf\n", ID, Channel, Volume);
            exit(1);
        }

        Mix_VolumeChunk(this->Engine.Assets.Sounds[ID], this->GlobalVolume * Volume * 128);
        if (Mix_PlayChannel(Channel, this->Engine.Assets.Sounds[ID], 0) == -1)
        {
            printf("engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf\n", ID, Channel, Volume);
            exit(1);
        }

        return 0;
    }

    uint8 engine::audio::Play(uint64 ID, uint16 Channel, double Volume, uint16 Loops)
    {
        if (Volume < 0 || 1 < Volume)
        {
            printf("engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", ID, Channel, Volume, Loops);
            exit(1);
        }
        if (ID == 0)
        {
            return 0;
        }
        if (this->Engine.Assets.Sounds.Length() <= ID || this->Engine.Assets.Sounds[ID] == NULL)
        {
            printf("engine.audio.Play(): WAV does not exists\nParams: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", ID, Channel, Volume, Loops);
            exit(1);
        }

        Mix_VolumeChunk(this->Engine.Assets.Sounds[ID], this->GlobalVolume * Volume * 128);
        if (Mix_PlayChannel(Channel, this->Engine.Assets.Sounds[ID], Loops) == -1)
        {
            printf("engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", ID, Channel, Volume, Loops);
            exit(1);
        }

        return 0;
    }

    uint8 engine::audio::Play(uint64 ID, uint16 Channel, double Volume, double Left, double Right)
    {
        if (Volume < 0 || 1 < Volume)
        {
            printf("engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", ID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (Left < 0 || 1 < Left)
        {
            printf("engine.audio.Play(): Left must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", ID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (Right < 0 || 1 < Right)
        {
            printf("engine.audio.Play(): Right must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", ID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (ID == 0)
        {
            return 0;
        }
        if (this->Engine.Assets.Sounds.Length() <= ID || this->Engine.Assets.Sounds[ID] == NULL)
        {
            printf("engine.audio.Play(): WAV does not exists\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", ID, Channel, Volume, Left, Right);
            exit(1);
        }

        Mix_VolumeChunk(this->Engine.Assets.Sounds[ID], this->GlobalVolume * Volume * 128);
        if (Mix_PlayChannel(Channel, this->Engine.Assets.Sounds[ID], 0) == -1)
        {
            printf("engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", ID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (Mix_SetPanning(Channel, Left * 255, Right * 255) == 0)
        {
            printf("engine.audio.Play(): Mix_SetPanning() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", ID, Channel, Volume, Left, Right);
            exit(1);
        }

        return 0;
    }

    uint8 engine::audio::Play(uint64 ID, uint16 Channel, double Volume, double Left, double Right, uint16 Loops)
    {
        if (Volume < 0 || 1 < Volume)
        {
            printf("engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", ID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (Left < 0 || 1 < Left)
        {
            printf("engine.audio.Play(): Left must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", ID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (Right < 0 || 1 < Right)
        {
            printf("engine.audio.Play(): Right must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", ID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (ID == 0)
        {
            return 0;
        }
        if (this->Engine.Assets.Sounds.Length() <= ID || this->Engine.Assets.Sounds[ID] == NULL)
        {
            printf("engine.audio.Play(): WAV does not exists\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", ID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }

        Mix_VolumeChunk(this->Engine.Assets.Sounds[ID], this->GlobalVolume * Volume * 128);
        if (Mix_PlayChannel(Channel, this->Engine.Assets.Sounds[ID], Loops) == -1)
        {
            printf("engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", ID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (Mix_SetPanning(Channel, Left * 255, Right * 255) == 0)
        {
            printf("engine.audio.Play(): Mix_SetPanning() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", ID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }

        return 0;
    }

    uint8 engine::audio::Stop(uint16 Channel)
    {
        Mix_HaltChannel(Channel);

        return 0;
    }
}