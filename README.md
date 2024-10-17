# 🧙 Wizard Engine

**A simple 2D cross-platform game engine built around [Simple DirectMedia Layer
2 (SDL2)](https://www.libsdl.org/).**

**The goal of this library is to make game development accessible to anyone who
can code in C++ and doesn't want to tinker with GUI.** Wizard Engine serves as a
high-level wrapper around SDL2 while maintaining low abstraction and high
performance. The stable version is still in progress (about 70%).

---

## ✨ Features & Goals

- **Easy-to-use**: Perfect for C++ developers looking for a lightweight game
  engine without complex GUIs.
- **High Performance**: Optimized to deliver smooth 2.5D graphics.
- **Cross-Platform Support**: Write once, deploy anywhere.

---

## 📚 Documentation

- **Wiki**: See the documentation on the
  [website](https://zanadoman.github.io/wizard_engine/).
- **Examples**: Check out the examples in the
  [`tests`](https://github.com/zanadoman/wizard_engine/tree/main/tests/)
  directory.

---

## 🖥️ Officially Supported Platforms

- **Windows**: `x86_64`
- **Linux**: `x86_64`
- **Android**: `x86_64`, `AArch64`
- **Web**: `x86`

---

## 🛠️ Dependencies

To use Wizard Engine, make sure you have the following dependencies installed:

- **Clang**
- **Android NDK** (for Android development only)
- **Emscripten** (for Web development only)
- **CMake**
- **Gradle** (for Android development only)
- **Rustup** (for server development only)
- **Doxygen** (for documentation only)

---

## 🔧 Build Instructions

Follow these steps to build the engine:

```
git clone https://github.com/zanadoman/wizard_engine.git
cd wizard_engine
mkdir build
cd build
cmake .. -G "MinGW Makefiles" --toolchain ../x86_64-windows.toolchain.cmake
cmake --build ./
```

---

## 🎮 Example Code

Here's a quick example to get you started with Wizard Engine:

```
#include <wizard_engine/wizard_engine.hpp>

wze_main("Wizard Engine", 1920, 1080) {
    wze_while(true) {}
    return 0;
}
```

## 🤝 Contributing

Contributions are welcomed! Feel free to create an issue or submit a PR if you'd
like to suggest new features or improvements.

---

## 📜 License

This library is licensed under the **zlib license.** For more details, see the
file [`LICENSE`](https://github.com/zanadoman/wizard_engine/blob/main/LICENSE).

---

***🚀 Enjoy!*** - Zana Domán
