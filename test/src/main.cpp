#include "../../src/WizardEngine.hpp"

#ifdef _WIN64
    #include <cmath>
#endif

using namespace neo;
using namespace wze;

sint32 main()
{
    engine* Engine;
    uint64 Texture;
    uint64 Font;
    engine::actor Actor1;
    engine::texturebox Actor1Texturebox;
    engine::actor Actor2;
    engine::texturebox Actor2Texturebox;
    engine::actor Actor3;
    engine::texturebox Actor3Texturebox;
    double Actor1RDirection, Actor1GDirection, Actor1BDirection, Actor1R, Actor1G, Actor1B;
    double Actor2RDirection, Actor2GDirection, Actor2BDirection, Actor2R, Actor2G, Actor2B;
    double Actor3RDirection, Actor3GDirection, Actor3BDirection, Actor3R, Actor3G, Actor3B;
    engine::actor Stat;
    engine::textbox StatText;
    string StatString;
    
    Engine = new engine(NULL, NULL, 3840, 2160, 1000 /  1000);

    Texture = Engine->Assets.LoadTexture("assets/test.png");
    Font = Engine->Assets.LoadFont("assets/Hack-Regular.ttf", 48);

    Actor1 = Engine->Actors.New(NULL, 0, 0, 0, Engine->Window.GetHeight() >> 1, Engine->Window.GetHeight() >> 1, 3.0 / 3.0);
    Actor1Texturebox = Actor1->Textureboxes.New(Texture);
    Actor2 = Engine->Actors.New(NULL, 0, 0, 0, Engine->Window.GetHeight() >> 1, Engine->Window.GetHeight() >> 1, 2.0 / 3.0);
    Actor2Texturebox = Actor2->Textureboxes.New(Texture);
    Actor3 = Engine->Actors.New(NULL, 0, 0, 0, Engine->Window.GetHeight() >> 1, Engine->Window.GetHeight() >> 1, 1.0 / 3.0);
    Actor3Texturebox = Actor3->Textureboxes.New(Texture);

    Actor1->SetAngle(360 * 3.0 / 3.0);
    Actor2->SetAngle(360 * 2.0 / 3.0);
    Actor3->SetAngle(360 * 1.0 / 3.0);

    Actor1->SetDepth(0.1 * 3.0 / 3.0);
    Actor2->SetDepth(0.1 * 2.0 / 3.0);
    Actor3->SetDepth(0.1 * 1.0 / 3.0);

    Actor1RDirection = 0.01;
    Actor1GDirection = 0.01;
    Actor1BDirection = 0.01;
    Actor1R = 255 * 3.0 / 3.0;
    Actor1G = 255 * 2.0 / 3.0;
    Actor1B = 255 * 1.0 / 3.0;

    Actor2RDirection = 0.01;
    Actor2GDirection = 0.01;
    Actor2BDirection = 0.01;
    Actor2R = 255 * 1.0 / 3.0;
    Actor2G = 255 * 3.0 / 3.0;
    Actor2B = 255 * 2.0 / 3.0;

    Actor3RDirection = 0.01;
    Actor3GDirection = 0.01;
    Actor3BDirection = 0.01;
    Actor3R = 255 * 1.0 / 3.0;
    Actor3G = 255 * 2.0 / 3.0;
    Actor3B = 255 * 3.0 / 3.0;

    Actor1Texturebox->ColorR = round(Actor1R);
    Actor1Texturebox->ColorG = round(Actor1G);
    Actor1Texturebox->ColorB = round(Actor1B);

    Actor2Texturebox->ColorR = round(Actor2R);
    Actor2Texturebox->ColorG = round(Actor2G);
    Actor2Texturebox->ColorB = round(Actor2B);

    Actor3Texturebox->ColorR = round(Actor3R);
    Actor3Texturebox->ColorG = round(Actor3G);
    Actor3Texturebox->ColorB = round(Actor3B);

    Stat = Engine->Actors.New(NULL, 0, Engine->Window.GetWidth() >> 1, Engine->Window.GetHeight() >> 1, 0, 0, 0);
    StatText = Stat->Textboxes.New("", Font);

    StatText->SetHeight(Engine->Window.GetHeight() / 60);
    StatText->SetX(Engine->Window.GetHeight() / 200.0 + (StatText->GetWidth() >> 1));
    StatText->SetY(Engine->Window.GetHeight() - Engine->Window.GetHeight() / 200.0 - (StatText->GetHeight() >> 1));

    Engine->Render.SetSamplingStep(EPSILON);
    Engine->Mouse.SetRelative();
    Engine->Mouse.SetSensitivity(0.5);

    while (Engine->Update())
    {
        Actor1->SetAngle(Actor1->GetAngle() + 0.01 * Engine->Timing.GetDeltaTime());
        Actor2->SetAngle(Actor2->GetAngle() - 0.01 * Engine->Timing.GetDeltaTime());
        Actor3->SetAngle(Actor3->GetAngle() + 0.01 * Engine->Timing.GetDeltaTime());

        Actor1R += Actor1RDirection * Engine->Timing.GetDeltaTime();
        Actor1G += Actor1GDirection * Engine->Timing.GetDeltaTime();
        Actor1B += Actor1BDirection * Engine->Timing.GetDeltaTime();
        if (Actor1R < 0)
        {
            Actor1RDirection = 0.01;
            Actor1R = 0;
        }
        else if (255 < Actor1R)
        {
            Actor1RDirection = -0.01;
            Actor1R = 255;
        }
        if (Actor1G < 0)
        {
            Actor1GDirection = 0.01;
            Actor1G = 0;
        }
        else if (255 < Actor1G)
        {
            Actor1GDirection = -0.01;
            Actor1G = 255;
        }
        if (Actor1B < 0)
        {
            Actor1BDirection = 0.01;
            Actor1B = 0;
        }
        else if (255 < Actor1B)
        {
            Actor1BDirection = -0.01;
            Actor1B = 255;
        }
        Actor1Texturebox->ColorR = round(Actor1R);
        Actor1Texturebox->ColorG = round(Actor1G);
        Actor1Texturebox->ColorB = round(Actor1B);

        Actor2R += Actor2RDirection * Engine->Timing.GetDeltaTime();
        Actor2G += Actor2GDirection * Engine->Timing.GetDeltaTime();
        Actor2B += Actor2BDirection * Engine->Timing.GetDeltaTime();
        if (Actor2R < 0)
        {
            Actor2RDirection = 0.01;
            Actor2R = 0;
        }
        else if (255 < Actor2R)
        {
            Actor2RDirection = -0.01;
            Actor2R = 255;
        }
        if (Actor2G < 0)
        { 
            Actor2GDirection = 0.01;
            Actor2G = 0;
        }
        else if (255 < Actor2G)
        {
            Actor2GDirection = -0.01;
            Actor2G = 255;
        }
        if (Actor2B < 0)
        {
            Actor2BDirection = 0.01;
            Actor2B = 0;
        }
        else if (255 < Actor2B)
        {
            Actor2BDirection = -0.01;
            Actor2B = 255;
        }
        Actor2Texturebox->ColorR = round(Actor2R);
        Actor2Texturebox->ColorG = round(Actor2G);
        Actor2Texturebox->ColorB = round(Actor2B);

        Actor3R += Actor3RDirection * Engine->Timing.GetDeltaTime();
        Actor3G += Actor3GDirection * Engine->Timing.GetDeltaTime();
        Actor3B += Actor3BDirection * Engine->Timing.GetDeltaTime();
        if (Actor3R < 0)
        {
            Actor3RDirection = 0.01;
            Actor3R = 0;
        }
        else if (255 < Actor3R)
        {
            Actor3RDirection = -0.01;
            Actor3R = 255;
        }
        if (Actor3G < 0)
        {
            Actor3GDirection = 0.01;
            Actor3G = 0;
        }
        else if (255 < Actor3G)
        {
            Actor3GDirection = -0.01;
            Actor3G = 255;
        }
        if (Actor3B < 0)
        {
            Actor3BDirection = 0.01;
            Actor3B = 0;
        }
        else if (255 < Actor3B)
        {
            Actor3BDirection = -0.01;
            Actor3B = 255;
        }
        Actor3Texturebox->ColorR = round(Actor3R);
        Actor3Texturebox->ColorG = round(Actor3G);
        Actor3Texturebox->ColorB = round(Actor3B);

        if (Engine->Window.HasFocus())
        {
            Engine->Camera.SetOriginX(engine::math::Clamp<double>(Engine->Camera.GetOriginX() + Engine->Mouse.GetMotionX() * Engine->Timing.GetDeltaTime(), -(Engine->Window.GetWidth() >> 1), Engine->Window.GetWidth() >> 1));
            Engine->Camera.SetOriginY(engine::math::Clamp<double>(Engine->Camera.GetOriginY() + Engine->Mouse.GetMotionY() * Engine->Timing.GetDeltaTime(), -(Engine->Window.GetHeight() >> 1), Engine->Window.GetHeight() >> 1));
        }
        
        StatText->SetLiteral((((((((StatString = {"GameTime: "}) += {(uint64)Engine->Timing.GetGameTime()}) += {"ms RenderTime: "}) += {(uint64)Engine->Timing.GetRenderTime()}) += {"ms FrameTime: "}) += {(uint64)Engine->Timing.GetFrameTime()}) += {"ms"})());
        StatText->SetX(Engine->Window.GetHeight() / 200.0 + (StatText->GetWidth() >> 1));
    }

    delete Engine;

    return 0;
}