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
    auto frame = std::array<uint8_t, 8>({});

    render::open_frame();

    for (auto s : sprite::__sprites()) {
        if (!s->visible()) {
            continue;
        }

        glPushMatrix();
        glRotatef(camera::angle(), 0, 0, 1);
        glTranslatef(camera::x(), camera::y(), camera::z());
        glRotatef(s->angle(), 0, 0, 1);

        glBindTexture(GL_TEXTURE_2D, s->data().get() ? *s->data().get() : 0);
        glColor3ub(s->color_r(), s->color_g(), s->color_b());

        switch (s->flip()) {
            case FLIP_NONE:
                frame = {0, 1, 1, 1, 1, 0, 0, 0};
            break;

            case FLIP_HORIZONTAL:
                frame = {1, 1, 0, 1, 0, 0, 1, 0};
            break;

            case FLIP_VERTICAL:
                frame = {0, 0, 1, 0, 1, 1, 0, 1};
            break;

            case FLIP_BOTH:
                frame = {1, 0, 0, 0, 0, 1, 1, 1};
            break;
        }

        glBegin(GL_QUADS);
        glTexCoord2d(frame.at(0), frame.at(1));
        glVertex3d(s->__area().at(0), s->__area().at(1), s->z());
        glTexCoord2d(frame.at(2), frame.at(3));
        glVertex3d(s->__area().at(2), s->__area().at(3), s->z());
        glTexCoord2d(frame.at(4), frame.at(5));
        glVertex3d(s->__area().at(4), s->__area().at(5), s->z());
        glTexCoord2d(frame.at(6), frame.at(7));
        glVertex3d(s->__area().at(6), s->__area().at(7), s->z());
        glEnd();

        glPopMatrix();
    }

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

    render::close_frame();
}
