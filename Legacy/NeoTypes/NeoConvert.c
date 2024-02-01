#include "NeoTypes.h"

uint64 STRtoUINT(char* Characters, logic* Success)
{
    uint64 result;

    uint64 CharactersLength;

    if (Characters == NULL)
    {
        printf("STRtoUINT(): Characters must not be NULL\nParams: Characters: %p, Success: %p\n", Characters, Success);
        exit(1);
    }

    result = 0;
    CharactersLength = strLength(Characters);
    for (uint64 i = 0; i < CharactersLength - 1; i++)
    {
        if ((Characters[i] < '0' || '9' < Characters[i]))
        {
            if (Success != NULL)
            {
                *Success = false;
            }
            return 0;
        }
        result += (Characters[i] - '0') * pow(10, CharactersLength - 2 - i);
    }

    if (Success != NULL)
    {
        *Success = true;
    }

    return result;
}

uint8 UINTtoSTR(uint64 Number, string String)
{
    uint64 i;

    if (String == NULL)
    {
        printf("UINTtoSTR(): String must not be NULL\nParams: Number: %lld, String: %p\n", Number, String);
        exit(1);
    }

    strInit(String, (char*)"");

    for (i = 1; 10 <= Number / i; i *= 10);
    for (; 0 < i; i /= 10)
    {
        strAppend(String, Number / i + '0');
        Number %= i;
    }

    return 0;
}

//___________________________________________________________________________________________________//

sint64 STRtoSINT(char* Characters, logic* Success)
{
    sint64 result;

    uint64 CharactersLength;

    if (Characters == NULL)
    {
        printf("STRtoSINT(): Characters must not be NULL\nParams: Characters: %p, Success: %p\n", Characters, Success);
        exit(1);
    }

    result = 0;
    CharactersLength = strLength(Characters);
    for (uint64 i = 1; i < CharactersLength - 1; i++)
    {
        if ((Characters[i] < '0' || '9' < Characters[i]))
        {
            if (Success != NULL)
            {
                *Success = false;
            }
            return 0;
        }
        result += (Characters[i] - '0') * pow(10, CharactersLength - 2 - i);
    }

    if (Characters[0] == '-')
    {
        result *= -1;
    }
    else
    {
        if ((Characters[0] < '0' || '9' < Characters[0]))
        {
            if (Success != NULL)
            {
                *Success = false;
            }
            return 0;
        }
        result += (Characters[0] - '0') * pow(10, CharactersLength - 2);
    }

    if (Success != NULL)
    {
        *Success = true;
    }

    return result;
}

uint8 SINTtoSTR(sint64 Number, string String)
{
    uint64 i;

    if (String == NULL)
    {
        printf("SINTtoSTR(): String must not be NULL\nParams: Number: %lld, String: %p\n", Number, String);
        exit(1);
    }

    strInit(String, (char*)"");

    if (Number < 0)
    {
        Number *= -1;
        strAppend(String, '-');
    }

    for (i = 1; 10 <= Number / i; i *= 10);
    for (; 0 < i; i /= 10)
    {
        strAppend(String, Number / i + '0');
        Number %= i;
    }

    return 0;
}

//___________________________________________________________________________________________________//

double STRtoDOUBLE(char* Characters, logic* Success)
{
    double result;

    uint64 CharactersLength;
    uint64 decimal;

    if (Characters == NULL)
    {
        printf("STRtoDOUBLE(): Characters must not be NULL\nParams: Characters: %p, Success: %p\n", Characters, Success);
        exit(1);
    }

    CharactersLength = strLength(Characters);
    decimal = CharactersLength - 1;
    for (uint64 i = 0; i < CharactersLength - 1; i++)
    {
        if (Characters[i] == '.')
        {
            decimal = i;
            break;
        }
    }

    result = 0;
    for (uint64 i = 1; i < decimal; i++)
    {
        if ((Characters[i] < '0' || '9' < Characters[i]))
        {
            if (Success != NULL)
            {
                *Success = false;
            }
            return 0;
        }
        result += (Characters[i] - '0') * pow(10, decimal - 1 - i);
    }
    for (uint64 i = decimal + 1; i < CharactersLength - 1; i++)
    {
        if ((Characters[i] < '0' || '9' < Characters[i]))
        {
            if (Success != NULL)
            {
                *Success = false;
            }
            return 0;
        }
        result += (Characters[i] - '0') * 1 / pow(10, i - decimal);
    }

    if (Characters[0] == '-')
    {
        result *= -1;
    }
    else
    {
        if ((Characters[0] < '0' || '9' < Characters[0]))
        {
            if (Success != NULL)
            {
                *Success = false;
            }
            return 0;
        }
        result += (Characters[0] - '0') * pow(10, decimal - 1);
    }

    if (Success != NULL)
    {
        *Success = true;
    }

    return result;
}

uint8 DOUBLEtoSTR(double Number, string String)
{
    uint64 i, whole;
    double fraction;

    if (String == NULL)
    {
        printf("DOUBLEtoSTR(): String must not be NULL\nParams: Number: %lf, String: %p\n", Number, String);
        exit(1);
    }

    strInit(String, (char*)"");

    if (Number < 0)
    {
        Number *= -1;
        strAppend(String, '-');
    }

    whole = (uint64)trunc(Number);
    fraction = Number - trunc(Number);

    for (i = 1; 10 <= whole / i; i *= 10);
    for (; 0 < i; i /= 10)
    {
        strAppend(String, whole / i + '0');
        whole %= i;
    }
    if (fraction > 0)
    {
        strAppend(String, '.');

        for (; 0 < fraction - trunc(fraction); fraction *= 10);

        for (i = 1; 10 <= (uint64)round(fraction) / i; i *= 10);
        for (; 0 < i; i /= 10)
        {
            strAppend(String, (uint64)round(fraction) / i + '0');
            fraction = (uint64)round(fraction) % i;
        }
    }

    return 0;
}