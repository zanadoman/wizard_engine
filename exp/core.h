#include <stddef.h>

struct PersonCore
{
    const char* m_name;
};

void corePrintPersons(struct PersonCore *persons[], size_t size);
