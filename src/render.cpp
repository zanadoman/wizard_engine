#include "../include/WZE/render.hpp" // IWYU pragma: keep

void wze::render::open_frame() {
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glPushMatrix();
    glTranslatef(camera::x(), camera::y(), camera::z());
    glRotatef(camera::angle(), 0, 0, 1);
}

void wze::render::close_frame() {
    glPopMatrix();
    SDL_GL_SwapWindow(window::base());
}

void wze::render::update() {
    render::open_frame();

    glBindTexture(GL_TEXTURE_2D, 0);
    glColor3ub(0, 0, 255);
    glBegin(GL_QUADS);
    glTexCoord2f(0, 1);
    glVertex3f(-5, -5, -50);
    glTexCoord2f(1, 1);
    glVertex3f(5, -5, -50);
    glTexCoord2f(1, 0);
    glVertex3f(5, 5, -50);
    glTexCoord2f(0, 0);
    glVertex3f(-5, 5, -50);
    glEnd();

    glBindTexture(GL_TEXTURE_2D, 1);
    glColor3ub(255, 255, 255);
    glBegin(GL_QUADS);
    glTexCoord2f(0, 1);
    glVertex3f(-5, -5, -25);
    glTexCoord2f(1, 1);
    glVertex3f(5, -5, -25);
    glTexCoord2f(1, 0);
    glVertex3f(5, 5, -25);
    glTexCoord2f(0, 0);
    glVertex3f(-5, 5, -25);
    glEnd();

    render::close_frame();
}
