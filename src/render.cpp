#include "../include/WZE/render.hpp" // IWYU pragma: keep

auto wze::render::project_absolute(const GLdouble vertex[3], 
                                   GLdouble screen[2]) -> GLint {
    GLint    viewport[4];
    GLdouble projection[16];
    GLdouble model[16];
    GLdouble tmp;

    glGetIntegerv(GL_VIEWPORT, viewport);
    glGetDoublev(GL_PROJECTION_MATRIX, projection);
    glGetDoublev(GL_MODELVIEW_MATRIX, model);

    return gluProject(vertex[0], vertex[1], vertex[2], model, projection,
                      viewport, &screen[0], &screen[1], &tmp);
}

auto wze::render::project_relative(const GLdouble vertex[3], 
                                   GLdouble screen[2]) -> GLint {
    GLint    viewport[4];
    GLdouble projection[16];
    GLdouble model[16];
    GLdouble tmp;

    glGetIntegerv(GL_VIEWPORT, viewport);
    glGetDoublev(GL_PROJECTION_MATRIX, projection);

    glPushMatrix();
    glTranslatef(camera::x(), camera::y(), camera::z());
    glRotatef(camera::angle(), 0, 0, 1);
    glGetDoublev(GL_MODELVIEW_MATRIX, model);
    glPopMatrix();

    return gluProject(vertex[0], vertex[1], vertex[2], model, projection,
                      viewport, &screen[0], &screen[1], &tmp);
}

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
    glColor4ub(0, 0, 255, 255);
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
    glColor4ub(255, 255, 255, 255);
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
