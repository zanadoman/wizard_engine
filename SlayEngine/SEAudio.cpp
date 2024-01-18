#include "Includes/SDL_mixer.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::audio::audio(engine& Engine) : Engine(Engine), Volume(1.0) {}

    double engine::audio::GetVolume()
    {
        return this->Volume;
    }

    uint8 engine::audio::SetVolume(double Volume)
    {
        if (Volume < 0 || 1 < Volume)
        {
            printf("engine.audio.SetVolume(): Invalid Volume\nParams: Volume: %lf\n", Volume);
            return 1;
        }

        this->Volume = Volume;

        return 0;
    }

    uint8 engine::audio::Play(uint64 SoundID, sint16 Channel, double Volume)
    {
        if (this->Engine.Assets.Sounds.Length() <= SoundID || this->Engine.Assets.Sounds[SoundID] == NULL)
        {
            printf("engine.audio.Play(): SoundID does not exists\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            return 1;
        }
        if (Channel < -1)
        {
            printf("engine.audio.Play(): Invalid Channel\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            return 1;
        }
        if (this->Volume < 0 || 1 < this->Volume)
        {
            printf("engine.audio.Play(): Invalid Volume\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            return 1;
        }

        Mix_VolumeChunk(this->Engine.Assets.Sounds[SoundID], this->Volume * Volume * 255);
        if (Mix_PlayChannel(Channel, this->Engine.Assets.Sounds[SoundID], 0) == -1)
        {
            printf("engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            return 1;
        }

        return 0;
    }
}