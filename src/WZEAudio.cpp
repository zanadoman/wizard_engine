#include "WizardEngine.hpp"

using namespace neo;

namespace wze
{
    engine::audio::audio(engine* Engine) : Engine(Engine), Channels(8)
    {
        this->GlobalVolume = 1;
        for (uint16 i = 0; i < this->Channels.Length(); i++)
        {
            this->Channels[i].ID = i;
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
            printf("wze::engine.audio.SetGlobalVolume(): GlobalVolume must not be NaN\nParams: Volume: %lf\n", GlobalVolume);
            exit(1);
        }
        if (GlobalVolume < 0 || 1 < GlobalVolume)
        {
            printf("wze::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\nParams: Volume: %lf\n", GlobalVolume);
            exit(1);
        }

        for (uint32 i = 0; i < this->Channels.Length(); i++)
        {
            Mix_Volume(i, GlobalVolume * this->Channels[i].Volume * 128);
        }

        return this->GlobalVolume = GlobalVolume;
    }

    uint8 engine::audio::Play(uint64 SoundID, uint16 Channel, double Volume)
    {
        if (Volume != Volume)
        {
            printf("wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            exit(1);
        }
        if (Volume < 0 || 1 < Volume)
        {
            printf("wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            exit(1);
        }
        if (this->Channels.Length() <= Channel)
        {
            printf("wze::engine.audio.Play(): Channel does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            exit(1);
        }
        if (SoundID == 0)
        {
            return 0;
        }
        if (this->Engine->Assets.Sounds.Length() <= SoundID || this->Engine->Assets.Sounds[SoundID] == NULL)
        {
            printf("wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            exit(1);
        }

        Mix_VolumeChunk(this->Engine->Assets.Sounds[SoundID], this->GlobalVolume * Volume * 128);
        if (Mix_PlayChannel(Channel, this->Engine->Assets.Sounds[SoundID], 0) == -1)
        {
            printf("wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            exit(1);
        }
        if (Mix_SetPanning(Channel, 255, 255) == 0)
        {
            printf("wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n", SoundID, Channel, Volume);
            exit(1);
        }

        this->Channels[Channel].SoundID = SoundID;
        this->Channels[Channel].Volume = Volume;
        this->Channels[Channel].Left = 1;
        this->Channels[Channel].Right = 1;
        this->Channels[Channel].Loops = 0;

        return 0;
    }

    uint8 engine::audio::Play(uint64 SoundID, uint16 Channel, double Volume, uint16 Loops)
    {
        if (Volume != Volume)
        {
            printf("wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", SoundID, Channel, Volume, Loops);
            exit(1);
        }
        if (Volume < 0 || 1 < Volume)
        {
            printf("wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", SoundID, Channel, Volume, Loops);
            exit(1);
        }
        if (this->Channels.Length() <= Channel)
        {
            printf("wze::engine.audio.Play(): Channel does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", SoundID, Channel, Volume, Loops);
            exit(1);
        }
        if (SoundID == 0)
        {
            return 0;
        }
        if (this->Engine->Assets.Sounds.Length() <= SoundID || this->Engine->Assets.Sounds[SoundID] == NULL)
        {
            printf("wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", SoundID, Channel, Volume, Loops);
            exit(1);
        }

        Mix_VolumeChunk(this->Engine->Assets.Sounds[SoundID], this->GlobalVolume * Volume * 128);
        if (Mix_PlayChannel(Channel, this->Engine->Assets.Sounds[SoundID], Loops) == -1)
        {
            printf("wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", SoundID, Channel, Volume, Loops);
            exit(1);
        }
        if (Mix_SetPanning(Channel, 255, 255) == 0)
        {
            printf("wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n", SoundID, Channel, Volume, Loops);
            exit(1);
        }

        this->Channels[Channel].SoundID = SoundID;
        this->Channels[Channel].Volume = Volume;
        this->Channels[Channel].Left = 1;
        this->Channels[Channel].Right = 1;
        this->Channels[Channel].Loops = Loops;

        return 0;
    }

    uint8 engine::audio::Play(uint64 SoundID, uint16 Channel, double Volume, double Left, double Right)
    {
        if (Volume != Volume)
        {
            printf("wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (Volume < 0 || 1 < Volume)
        {
            printf("wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (Left != Left)
        {
            printf("wze::engine.audio.Play(): Left must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (Left < 0 || 1 < Left)
        {
            printf("wze::engine.audio.Play(): Left must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (Right != Right)
        {
            printf("wze::engine.audio.Play(): Right must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (Right < 0 || 1 < Right)
        {
            printf("wze::engine.audio.Play(): Right must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (this->Channels.Length() <= Channel)
        {
            printf("wze::engine.audio.Play(): Channel does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (SoundID == 0)
        {
            return 0;
        }
        if (this->Engine->Assets.Sounds.Length() <= SoundID || this->Engine->Assets.Sounds[SoundID] == NULL)
        {
            printf("wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }

        Mix_VolumeChunk(this->Engine->Assets.Sounds[SoundID], this->GlobalVolume * Volume * 128);
        if (Mix_PlayChannel(Channel, this->Engine->Assets.Sounds[SoundID], 0) == -1)
        {
            printf("wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }
        if (Mix_SetPanning(Channel, Left * 255, Right * 255) == 0)
        {
            printf("wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n", SoundID, Channel, Volume, Left, Right);
            exit(1);
        }

        this->Channels[Channel].SoundID = SoundID;
        this->Channels[Channel].Volume = Volume;
        this->Channels[Channel].Left = Left;
        this->Channels[Channel].Right = Right;
        this->Channels[Channel].Loops = 0;

        return 0;
    }

    uint8 engine::audio::Play(uint64 SoundID, uint16 Channel, double Volume, double Left, double Right, uint16 Loops)
    {
        if (Volume != Volume)
        {
            printf("wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (Volume < 0 || 1 < Volume)
        {
            printf("wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (Left != Left)
        {
            printf("wze::engine.audio.Play(): Left must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (Left < 0 || 1 < Left)
        {
            printf("wze::engine.audio.Play(): Left must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (Right != Right)
        {
            printf("wze::engine.audio.Play(): Right must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (Right < 0 || 1 < Right)
        {
            printf("wze::engine.audio.Play(): Right must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (this->Channels.Length() <= Channel)
        {
            printf("wze::engine.audio.Play(): Channel does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (SoundID == 0)
        {
            return 0;
        }
        if (this->Engine->Assets.Sounds.Length() <= SoundID || this->Engine->Assets.Sounds[SoundID] == NULL)
        {
            printf("wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }

        Mix_VolumeChunk(this->Engine->Assets.Sounds[SoundID], this->GlobalVolume * Volume * 128);
        if (Mix_PlayChannel(Channel, this->Engine->Assets.Sounds[SoundID], Loops) == -1)
        {
            printf("wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }
        if (Mix_SetPanning(Channel, Left * 255, Right * 255) == 0)
        {
            printf("wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n", SoundID, Channel, Volume, Left, Right, Loops);
            exit(1);
        }

        this->Channels[Channel].SoundID = SoundID;
        this->Channels[Channel].Volume = Volume;
        this->Channels[Channel].Left = Left;
        this->Channels[Channel].Right = Right;
        this->Channels[Channel].Loops = Loops;

        return 0;
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
            this->Channels.Remove(ChannelCount, this->Channels.Length() - ChannelCount);
        }
        else if (this->Channels.Length() < ChannelCount)
        {
            this->Channels.Insert(this->Channels.Length(), ChannelCount - (cache = this->Channels.Length()));
            for (uint16 i = cache; i < this->Channels.Length(); i++)
            {
                this->Channels[i].ID = i;
                this->Channels[i].SoundID = 0;
                this->Channels[i].Volume = 0;
                this->Channels[i].Left = 0;
                this->Channels[i].Right = 0;
                this->Channels[i].Loops = 0;
                this->Channels[i].Paused = false;
            }
        }

        return this->Channels.Length();
    }

    double engine::audio::SetVolume(uint16 Channel, double Volume)
    {
        if (this->Channels.Length() <= Channel)
        {
            printf("wze::engine.audio.SetVolume(): Channel does not exist\nParams: Channel: %d, Volume: %lf\n", Channel, Volume);
            exit(1);
        }

        Mix_Volume(Channel, Volume * 128);

        this->Channels[Channel].Volume = Volume;

        return Volume;
    }

    uint8 engine::audio::Pause(uint16 Channel)
    {   
        if (this->Channels.Length() <= Channel)
        {
            printf("wze::engine.audio.Pause(): Channel does not exist\nParams: Channel: %d\n", Channel);
            exit(1);
        }

        Mix_Pause(Channel);

        this->Channels[Channel].Paused = true;

        return 0;
    }

    uint8 engine::audio::Resume(uint16 Channel)
    {
        if (this->Channels.Length() <= Channel)
        {
            printf("wze::engine.audio.Resume(): Channel does not exist\nParams: Channel: %d\n", Channel);
            exit(1);
        }

        Mix_Resume(Channel);

        this->Channels[Channel].Paused = false;

        return 0;
    }

    uint8 engine::audio::PauseAll()
    {
        Mix_PauseAudio(1);

        for (uint16 i = 0; i < this->Channels.Length(); i++)
        {
            Mix_Pause(i);
            this->Channels[i].Paused = true;
        }

        return 0;
    }

    uint8 engine::audio::ResumeAll()
    {
        Mix_PauseAudio(0);

        for (uint16 i = 0; i < this->Channels.Length(); i++)
        {
            Mix_Resume(i);
            this->Channels[i].Paused = false;
        }

        return 0;
    }

    uint8 engine::audio::Stop(uint16 Channel)
    {
        if (this->Channels.Length() <= Channel)
        {
            printf("wze::engine.audio.Stop(): Channel does not exist\nParams: Channel: %d\n", Channel);
            exit(1);
        }

        if (Mix_HaltChannel(Channel) != 0)
        {
            printf("wze::engine.audio.Stop(): Mix_HaltChannel() failed\nParams: Channel: %d\n", Channel);
            exit(1);
        }

        this->Channels[Channel].SoundID = 0;
        this->Channels[Channel].Volume = 0;
        this->Channels[Channel].Left = 0;
        this->Channels[Channel].Right = 0;
        this->Channels[Channel].Loops = 0;

        return 0;
    }

    engine::audio::channel engine::audio::operator [] (uint16 Channel)
    {
        if (this->Channels.Length() <= Channel)
        {
            printf("wze::engine.audio[]: Channel does not exist\nParams: Channel: %d\n", Channel);
            exit(1);
        }

        return this->Channels[Channel];
    }
}