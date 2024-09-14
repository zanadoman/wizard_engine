package com.example.app

import org.libsdl.app.SDLActivity

class MainActivity : SDLActivity() {
    override fun getLibraries(): Array<String> {
        return arrayOf(
            "SDL2",
            "SDL2_image",
            "SDL2_mixer",
            "SDL2_net",
            "SDL2_ttf",
            "wizard_engine",
            "main"
        )
    }
}
