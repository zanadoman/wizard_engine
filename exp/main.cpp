/*
 * gcc -c -O3 core.c && g++ -c -O3 main.cpp && g++ core.o main.o && ./a.out
 */

#include <cstdint>
#include <vector>
#include <algorithm>

extern "C"
{
    #include "core.h"
}

using namespace std;

class Person : PersonCore 
{
    private: static vector<PersonCore*> ms_persons;

    private: uint_fast8_t m_age;

    public: Person(const char* name, uint_fast8_t age)
    {
        m_name = name;
        m_age = age;
        ms_persons.push_back(static_cast<PersonCore*>(this));
    }

    public: ~Person()
    {
        ms_persons.erase(remove(ms_persons.begin(), ms_persons.end(),
                                static_cast<PersonCore*>(this)));
    }

    public: static void printPersons()
    {
        corePrintPersons(&ms_persons[0], ms_persons.size());
    }
};

vector<PersonCore*> Person::ms_persons;

int32_t main(void)
{
    Person p1("John", 22), p2("David", 34), p3("Mary", 44);

    Person::printPersons();

    return 0;
}
