#include "../include/WZE/render.hpp" // IWYU pragma: keep

auto wze::render::abs_projection(const double vertex[3], double screen[2])
    -> bool {
    int32_t viewport[4];
    double  projection[16];
    double  model[16];
    double  tmp;

    glGetIntegerv(GL_VIEWPORT, viewport);
    glGetDoublev(GL_PROJECTION_MATRIX, projection);
    glGetDoublev(GL_MODELVIEW_MATRIX, model);

    return gluProject(vertex[0], vertex[1], vertex[2], model, projection,
                      viewport, &screen[0], &screen[1], &tmp);
}

auto wze::render::rel_projection(const double vertex[3], double screen[2])
    -> bool {
    int32_t viewport[4];
    double  projection[16];
    double  model[16];
    double  tmp;

    glGetIntegerv(GL_VIEWPORT, viewport);
    glGetDoublev(GL_PROJECTION_MATRIX, projection);

    glPushMatrix();
    glRotatef(camera::angle(), 0, 0, 1);
    glTranslatef(camera::x(), camera::y(), camera::z());
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
    glRotatef(camera::angle(), 0, 0, 1);
    glTranslatef(camera::x(), camera::y(), camera::z());
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
    glTexCoord2d(0, 1);
    glVertex3d(-5, -5, -50);
    glTexCoord2d(1, 1);
    glVertex3d(5, -5, -50);
    glTexCoord2d(1, 0);
    glVertex3d(5, 5, -50);
    glTexCoord2d(0, 0);
    glVertex3d(-5, 5, -50);
    glEnd();

    glBindTexture(GL_TEXTURE_2D, 1);
    glColor4ub(255, 255, 255, 255);
    glBegin(GL_QUADS);
    glTexCoord2d(0, 1);
    glVertex3d(-5, -5, -25);
    glTexCoord2d(1, 1);
    glVertex3d(5, -5, -25);
    glTexCoord2d(1, 0);
    glVertex3d(5, 5, -25);
    glTexCoord2d(0, 0);
    glVertex3d(-5, 5, -25);
    glEnd();

    render::close_frame();
}
