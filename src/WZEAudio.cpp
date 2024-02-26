#include "WizardEngine.hpp"
#include <cmath>

using namespace neo;

namespace wze
{
    engine::audio::audio(engine* Engine) : Engine(Engine), Channels(8)
    {
        this->GlobalVolume = 1;
        for (uint8 i = 0; i < this->Channels.Length(); i++)
        {
            this->Channels[i] = new channel(this->Engine, i);
        }
    }

    engine::audio::~audio()
    {
        for (uint16 i = 0; i < this->Channels.Length(); i++)
        {
            delete this->Channels[i];
        }
    }

    double engine::audio::GetGlobalVolume()
    {
        return this->GlobalVolume;
    }

    double engine::audio::SetGlobalVolume(double GlobalVolume)
    {
        if (GlobalVolume != GlobalVolume)
        {
            printf("wze::engine.audio.SetGlobalVolume(): GlobalVolume must not be NaN\nParams: GlobalVolume: %lf\n", GlobalVolume);
            exit(1);
        }
        if (GlobalVolume < 0 || 1 < GlobalVolume)
        {
            printf("wze::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\nParams: GlobalVolume: %lf\n", GlobalVolume);
            exit(1);
        }

        Mix_MasterVolume(this->GlobalVolume * 128);

        return this->GlobalVolume = GlobalVolume;
    }

    uint16 engine::audio::GetChannelCount()
    {
        return this->Channels.Length();
    }

    uint16 engine::audio::SetChannelCount(uint16 ChannelCount)
    {
        uint16 cache;

        if (Mix_AllocateChannels(ChannelCount) != ChannelCount)
        {
            printf("wze::engine.audio.SetChannelCount(): Mix_AllocateChannels() failed\nParams: ChannelCount: %d\n", ChannelCount);
            exit(1);
        }

        if (ChannelCount < this->Channels.Length())
        {
            for (uint16 i = ChannelCount; i < this->Channels.Length(); i++)
            {
                delete this->Channels[i];
            }

            this->Channels.Remove(ChannelCount, this->Channels.Length() - ChannelCount);
        }
        else if (this->Channels.Length() < ChannelCount)
        {
            this->Channels.Insert(this->Channels.Length(), ChannelCount - (cache = this->Channels.Length()));

            for (uint16 i = cache; i < ChannelCount; i++)
            {
                this->Channels[i] = new channel(this->Engine, i);
            }
        }

        return ChannelCount;
    }

    uint8 engine::audio::PauseAll()
    {
        Mix_PauseAudio(1);

        return 0;
    }

    uint8 engine::audio::ResumeAll()
    {
        Mix_PauseAudio(0);

        return 0;
    }

    engine::audio::channel::channel(engine* Engine, uint64 ID) : Engine(Engine)
    {
        this->ID = ID;
        this->SoundID = 0;
        this->Volume = 1;
        this->ActorID = 0;
    }

    uint64 engine::audio::channel::GetSoundID()
    {
        return this->SoundID;
    }

    uint64 engine::audio::channel::SetSoundID(uint64 SoundID)
    {
        if (SoundID != 0 && (this->Engine->Assets.Sounds.Length() <= SoundID || this->Engine->Assets.Sounds[SoundID] == NULL))
        {
            printf("wze::engine.audio[].SetSoundID(): Sound does not exist\nParams: SoundID: %lld\n", SoundID);
            exit(1);
        }

        if (this->SoundID != SoundID)
        {
            Mix_HaltChannel(this->ID);
        }

        return this->SoundID = SoundID;
    }

    uint8 engine::audio::channel::Play()
    {
        if (this->SoundID == 0)
        {
            return 0;
        }

        if (Mix_PlayChannel(this->ID, this->Engine->Assets.Sounds[this->SoundID], 0) == -1)
        {
            printf("wze::engine.audio[].Play(): Mix_PlayChannel() failed\n");
            exit(1);
        }

        return 0;
    }

    uint8 engine::audio::channel::Play(uint16 Loops)
    {
        if (this->SoundID == 0)
        {
            return 0;
        }

        if (Mix_PlayChannel(this->ID, this->Engine->Assets.Sounds[this->SoundID], Loops) == -1)
        {
            printf("wze::engine.audio[].Play(): Mix_PlayChannel() failed\nParams: Loops: %d\n", Loops);
            exit(1);
        }

        return 0;
    }

    uint8 engine::audio::channel::Play(uint16 Loops, uint16 FadeInMilliseconds)
    {
        if (this->SoundID == 0)
        {
            return 0;
        }

        if (Mix_FadeInChannel(this->ID, this->Engine->Assets.Sounds[this->SoundID], Loops, FadeInMilliseconds) == -1)
        {
            printf("wze::engine.audio[].Play(): Mix_FadeInChannel() failed\nParams: Loops: %d, FadeInMilliseconds: %d\n", Loops, FadeInMilliseconds);
            exit(1);
        }

        return 0;
    }

    double engine::audio::channel::GetVolume()
    {
        return this->Volume;
    }

    double engine::audio::channel::SetVolume(double Volume)
    {
        if (Volume != Volume)
        {
            printf("wze::engine.audio[].SetVolume(): Volume must not be NaN\nParams: Volume: %lf\n", Volume);
            exit(1);
        }
        if (Volume < 0 || 1 < Volume)
        {
            printf("wze::engine.audio[].SetVolume(): Volume must be in range [0, 1]\nParams: Volume: %lf\n", Volume);
            exit(1);
        }

        Mix_Volume(this->ID, round(this->Volume * 128));

        return this->Volume = Volume;
    }

    bool engine::audio::channel::IsPaused()
    {
        return Mix_Paused(this->ID);
    }

    uint8 engine::audio::channel::Pause()
    {
        Mix_Pause(this->ID);

        return 0;
    }

    uint8 engine::audio::channel::Resume()
    {
        Mix_Resume(this->ID);

        return 0;
    }

    uint8 engine::audio::channel::Stop()
    {
        if (Mix_HaltChannel(this->ID) == -1)
        {
            printf("wze::engine.audio[].Stop(): Mix_HaltChannel() failed\n");
            exit(1);
        }

        return 0;
    }

    uint8 engine::audio::channel::Stop(uint16 FadeOutMilliseconds)
    {
        Mix_FadeOutChannel(this->ID, FadeOutMilliseconds);

        return 0;
    }

    uint64 engine::audio::channel::Bind(uint64 ActorID)
    {
        if (this->ActorID != 0 && (this->Engine->Actors.Actors.Length() <= ActorID || this->Engine->Actors.Actors[ActorID] == NULL))
        {
            printf("wze::engine.audio[].Bind(): Actor does not exist\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }

        return this->ActorID = ActorID;
    }

    uint8 engine::audio::channel::Unbind()
    {
        this->ActorID = 0;

        return 0;
    }
}