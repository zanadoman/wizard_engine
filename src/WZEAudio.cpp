#include "WizardEngine.hpp"

using namespace neo;

namespace wze
{
    engine::audio::audio(engine* Engine) : Engine(Engine), Channels(8)
    {
        this->GlobalVolume = 1;
        for (uint8 i = 0; i < this->Channels.Length(); i++)
        {
            this->Channels[i] = new channel(this->Engine);
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
                this->Channels[i] = new channel(this->Engine);
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
}