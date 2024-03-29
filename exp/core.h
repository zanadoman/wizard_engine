#include <stddef.h>

#ifdef __cplusplus
    namespace core
    {
        extern "C"
        {
#endif

            struct PersonCore
            {
                const char* m_name;
            };

            void corePrintPersons(struct PersonCore *persons[], size_t size);

#ifdef __cplusplus
        }
    }
#endif
