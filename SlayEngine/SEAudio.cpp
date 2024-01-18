#include "SlayEngine.hpp"

namespace slay
{
    engine::audio::audio(engine& Engine) : Engine(Engine), GlobalVolume(1.0) {}

    double engine::audio::GetGlobalVolume()
    {
        return this->GlobalVolume;
    }

    uint8 engine::audio::SetGlobalVolume(double GlobalVolume)
    {
        if (GlobalVolume < 0 || 1 < GlobalVolume)
        {
            printf("engine.audio.SetVolume(): Invalid Volume\nParams: Volume: %lf\n", GlobalVolume);
            return 1;
        }

        this->GlobalVolume = GlobalVolume;

        return 0;
    }

    uint8 engine::audio::Play(uint64 SoundID, uint32 Channel, double Volume)
    {
        if (this->Engine.Assets.Sounds.Length() <= SoundID || this->Engine.Assets.Sounds[SoundID] == NULL)
        {
            printf("engine.audio.Play(): SoundID does not exists\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            return 1;
        }
        if (Volume < 0 || 1 < Volume)
        {
            printf("engine.audio.Play(): Invalid Volume\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            return 1;
        }

        Mix_VolumeChunk(this->Engine.Assets.Sounds[SoundID], this->GlobalVolume * Volume * 255);
        if (Mix_PlayChannel(Channel, this->Engine.Assets.Sounds[SoundID], 0) == -1)
        {
            printf("engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            return 1;
        }

        return 0;
    }

    uint8 engine::audio::Play(uint64 SoundID, uint32 Channel, double Volume, uint16 Loops)
    {
        if (this->Engine.Assets.Sounds.Length() <= SoundID || this->Engine.Assets.Sounds[SoundID] == NULL)
        {
            printf("engine.audio.Play(): SoundID does not exists\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", SoundID, Channel, Volume, Loops);
            return 1;
        }
        if (Volume < 0 || 1 < Volume)
        {
            printf("engine.audio.Play(): Invalid Volume\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", SoundID, Channel, Volume, Loops);
            return 1;
        }

        Mix_VolumeChunk(this->Engine.Assets.Sounds[SoundID], this->GlobalVolume * Volume * 255);
        if (Mix_PlayChannel(Channel, this->Engine.Assets.Sounds[SoundID], Loops) == -1)
        {
            printf("engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", SoundID, Channel, Volume, Loops);
            return 1;
        }

        return 0;
    }

    uint8 engine::audio::Play(uint64 SoundID, uint32 Channel, double Volume, double Left, double Right)
    {
        if (this->Engine.Assets.Sounds.Length() <= SoundID || this->Engine.Assets.Sounds[SoundID] == NULL)
        {
            printf("engine.audio.Play(): SoundID does not exists\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            return 1;
        }
        if (Volume < 0 || 1 < Volume)
        {
            printf("engine.audio.Play(): Invalid Volume\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            return 1;
        }

        Mix_VolumeChunk(this->Engine.Assets.Sounds[SoundID], this->GlobalVolume * Volume * 255);
        if (Mix_PlayChannel(Channel, this->Engine.Assets.Sounds[SoundID], 0) == -1)
        {
            printf("engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            return 1;
        }
        if (Mix_SetPanning(Channel, Left * 255, Right * 255) == 0)
        {
            printf("engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            return 1;
        }

        return 0;
    }

    uint8 engine::audio::Play(uint64 SoundID, uint32 Channel, double Volume, double Left, double Right, uint16 Loops)
    {
        if (this->Engine.Assets.Sounds.Length() <= SoundID || this->Engine.Assets.Sounds[SoundID] == NULL)
        {
            printf("engine.audio.Play(): SoundID does not exists\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            return 1;
        }
        if (Volume < 0 || 1 < Volume)
        {
            printf("engine.audio.Play(): Invalid Volume\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            return 1;
        }

        Mix_VolumeChunk(this->Engine.Assets.Sounds[SoundID], this->GlobalVolume * Volume * 255);
        if (Mix_PlayChannel(Channel, this->Engine.Assets.Sounds[SoundID], Loops) == -1)
        {
            printf("engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            return 1;
        }
        if (Mix_SetPanning(Channel, Left * 255, Right * 255) == 0)
        {
            printf("engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            return 1;
        }

        return 0;
    }

    uint8 engine::audio::Stop(std::initializer_list<uint32> Channels)
    {
        for (uint64 i = 0; i < Channels.size(); i++)
        {
            Mix_HaltChannel(Channels.begin()[i]);
        }

        return 0;
    }
}