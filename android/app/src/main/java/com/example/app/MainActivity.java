package com.example.app;

import org.libsdl.app.SDLActivity;

public class MainActivity extends SDLActivity {
    @override
    protected String[] getLibraries() {
        return new String[] {
                "SDL2",
                "SDL2_image",
                "SDL2_mixer",
                "SDL2_net",
                "SDL2_ttf",
                "wizard_engine",
                "main"
        };
    }
}
