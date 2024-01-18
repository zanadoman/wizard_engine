#include "SlayEngine.hpp"

namespace slay
{
    engine::audio::audio(engine& Engine) : Engine(Engine), Volume(1.0) {}

    engine::audio::sound::sound() : SoundID(0), Channel(-1), MainVolume(1), LeftVolume(1), RightVolume(1), Loops(0) {}

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
}