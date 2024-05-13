#include "../include/WZE/render.hpp" // IWYU pragma: keep

void wze::render::open_frame() {
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glPushMatrix();
    glTranslatef(camera::x(), camera::y(), 0);
}

void wze::render::close_frame() {
    glPopMatrix();
    SDL_GL_SwapWindow(window::base());
}

void wze::render::update() {
    render::open_frame();

    glBegin(GL_QUADS);
    glColor3ub(255, 0, 0);
    glVertex3s(-5, -5, -25);
    glColor3ub(0, 0, 255);
    glVertex3s(5, -5, -25);
    glColor3ub(255, 0, 0);
    glVertex3s(5, 5, -25);
    glColor3ub(0, 0, 255);
    glVertex3s(-5, 5, -25);
    glEnd();

    glBegin(GL_QUADS);
    glColor3ub(0, 255, 0);
    glVertex3s(-5, -5, -50);
    glVertex3s(5, -5, -50);
    glVertex3s(5, 5, -50);
    glVertex3s(-5, 5, -50);
    glEnd();

    render::close_frame();
}
