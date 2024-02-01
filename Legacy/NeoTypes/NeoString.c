#include "NeoTypes.h"

uint64 strLength(char* Characters)
{
    uint64 length;

    if (Characters == NULL)
    {
        printf("strLength(): Characters must not be NULL\nParams: Characters: %p\n", Characters);
        exit(1);
    }

    length = 0;
    while (Characters[length] != '\0')
    {
        length++;
    }

    return length + 1;
}

string strNew()
{
    string result;

    result = (string)malloc(STRING_SIZE);
    if (result == NULL)
    {
        printf("strNew(): Memory allocation failed\n");
        exit(1);
    }

    result->String = (char*)malloc(sizeof(char) * 1);
    if (result->String == NULL)
    {
        printf("strNew(): Memory allocation failed\n");
        exit(1);
    }

    result->String[0] = '\0';
    result->Length = 1;

    return result;
}

uint8 strInit(string String, char* Characters)
{
    if (String == NULL)
    {
        printf("strInit(): String must not be NULL\nParams: String: %p, Characters: %p\n", String, Characters);
        exit(1);
    }
    if (Characters == NULL)
    {
        printf("strInit(): Character must not be NULL\nParams: String: %p, Characters: %p\n", String, Characters);
    }

    String->Length = strLength(Characters);
    String->String = (char*)realloc(String->String, sizeof(char) * String->Length);
    if (String->String == NULL)
    {
        printf("strInit(): Memory allocation failed\nParams: String: %p, Characters: %p\n", String, Characters);
        exit(1);
    }

    memCopyTo(Characters, String->String, String->Length);

    return 0;
}

uint8 strAppend(string String, char Character)
{
    if (String == NULL)
    {
        printf("strAppend(): String must not be NULL\nParams: String: %p, Character: %c\n", String, Character);
        exit(1);
    }

    String->Length++;
    String->String = (char*)realloc(String->String, sizeof(char) * String->Length);
    if (String->String == NULL)
    {
        printf("strAppend(): Memory allocation failed\nParams: String: %p, Character: %c\n", String, Character);
        exit(1);
    }

    String->String[String->Length - 2] = Character;
    String->String[String->Length - 1] = '\0';

    return 0;
}

uint8 strConcat(string String, uint64 Count, char* Characters, ...)
{
    char* StringTMP;
    uint64 StringLengthTMP;
    va_list CharactersArgs;
    uint64 current;
    char* CharactersTemp;

    if (String == NULL)
    {
        printf("strConcat(): String must not be NULL\nParams: String: %p, Count: %lld, Characters: %p\n", String, Count, Characters);
        exit(1);
    }
    if (Count < 2)
    {
        printf("strConcat(): Count must be at least 2\nParams: String: %p, Count: %lld, Characters: %p\n", String, Count, Characters);
        exit(1);
    }

    va_start(CharactersArgs, Characters);
    StringLengthTMP = strLength(Characters) - 1;
    for (uint64 i = 1; i < Count; i++)
    {
        StringLengthTMP += strLength(va_arg(CharactersArgs, char*)) - 1;
    }
    StringLengthTMP++;
    va_end(CharactersArgs);

    StringTMP = (char*)malloc(sizeof(char) * StringLengthTMP);
    if (StringTMP == NULL)
    {
        printf("strConcat(): Memory allocation failed\nParams: String: %p, Count: %lld, Characters: %p\n", String, Count, Characters);
        exit(1);
    }

    va_start(CharactersArgs, Characters);
    for (current = 0; current < strLength(Characters) - 1; current++)
    {
        StringTMP[current] = Characters[current];
    }
    for (uint64 i = 1; i < Count; i++)
    {
        CharactersTemp = va_arg(CharactersArgs, char*);
        for (uint64 j = 0; j < strLength(CharactersTemp) - 1; j++)
        {
            StringTMP[current] = CharactersTemp[j];
            current++;
        }
    }
    StringTMP[StringLengthTMP - 1] = '\0';
    va_end(CharactersArgs);

    free(String->String);
    String->String = StringTMP;
    String->Length = StringLengthTMP;

    return 0;
}

uint8 strRead(string String)
{
    char Character;

    String->String = (char*)realloc(String->String, sizeof(char*) * 1);
    if (String->String == NULL)
    {
        printf("strRead(): Memory allocation failed\nParams: String: %p\n", String);
        exit(1);
    }

    String->String[0] = '\0';
    String->Length = 1;

    while ((Character = getchar()) != '\n')
    {
        strAppend(String, Character);
    }

    return 0;
}

uint8 strSplit(array Array, char* Characters, char Character)
{
    string StringTMP;

    free(Array->Elements);
    Array->Elements = NULL;
    Array->Length = 0;

    StringTMP = strNew();

    for (uint64 i = 0; i < strLength(Characters) - 1; i++)
    {
        if (Characters[i] != Character)
        {
            strAppend(StringTMP, Characters[i]);
        }
        else if (1 < StringTMP->Length)
        {
            arrInsert(Array, Array->Length)->String = StringTMP;
            StringTMP = strNew();
        }
    }

    if (1 < StringTMP->Length)
    {
        arrInsert(Array, Array->Length)->String = StringTMP;
    }
    else
    {
        strPurge(StringTMP);
    }

    return 0;
}

logic strCompare(char* Characters1, char* Characters2)
{
    uint64 Characters1Length;

    if (Characters1 == Characters2)
    {
        return true;
    }
    if (Characters1 == NULL)
    {
        return false;
    }
    if (Characters2 == NULL)
    {
        return false;
    }

    Characters1Length = strLength(Characters1);
    if (Characters1Length == strLength(Characters2))
    {
        for (uint64 i = 0; i < Characters1Length; i++)
        {
            if (Characters1[i] != Characters2[i])
            {
                return false;
            }
        }
        return true;
    }

    return false;
}

uint8 strPurge(string String)
{
    if (String == NULL)
    {
        return 0;
    }

    free(String->String);
    free(String);

    return 0;
}