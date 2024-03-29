#include <stdio.h>
#include <stdint.h>
#include "core.h"

void corePrintPersons(struct PersonCore *persons[], size_t size)
{
    for (uint_fast64_t i = 0; i < size; i++)
    {
        (void)puts(persons[i]->m_name);
    }
}
