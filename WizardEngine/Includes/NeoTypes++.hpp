#pragma once

#include <cstdio>
#include <cstdlib>
#include <type_traits>
#include <initializer_list>

#ifdef _WIN64
    #include <new>
#endif

namespace neo
{
    //_____________________________________________NeoTypes.hpp____________________________________________//

    typedef unsigned char uint8;
    typedef signed char sint8;
    typedef unsigned short uint16;
    typedef signed short sint16;
    typedef unsigned int uint32;
    typedef signed int sint32;
    typedef unsigned long long uint64;
    typedef signed long long sint64;

    template <typename type> class array;
    class string;

    //_____________________________________________NeoArray.hpp____________________________________________//

    template <typename type> class array
    {
        public:
            array();
            array(uint64 Length);
            array(std::initializer_list<type> Elements);
            array(std::initializer_list<array<type>*> Arrays);
            ~array();

            uint64 Length();
            type& operator [] (uint64 Index);

            array<type>& operator = (std::initializer_list<type> Elements);
            array<type>& operator = (std::initializer_list<array<type>*> Arrays);
            array<type>& operator -= (std::initializer_list<type> Elements);
            array<type>& operator -= (std::initializer_list<array<type>*> Arrays);
            array<type>& operator += (std::initializer_list<type> Elements);
            array<type>& operator += (std::initializer_list<array<type>*> Arrays);
            bool operator == (array<type>* Array);
            bool operator != (array<type>* Array);

            array<type>& Insert(uint64 Index, uint64 Length);
            array<type>& Insert(uint64 Index, std::initializer_list<type> Elements);
            array<type>& Insert(uint64 Index, std::initializer_list<array <type>*> Arrays);

            array<type>& Remove(uint64 Index, uint64 Length);

            bool Contains(std::initializer_list<type> Elements);
            bool Contains(std::initializer_list<array <type>*> Arrays);

            array<type>& Reverse();

            template <typename typeTMP = type> typename std::enable_if<std::is_same<typeTMP, const char*>::value, array<typeTMP>&>::type WriteFile(const char* Path);
            template <typename typeTMP = type> typename std::enable_if<std::is_same<typeTMP, string>::value, array<typeTMP>&>::type WriteFile(const char* Path);
            template <typename typeTMP = type> typename std::enable_if<std::is_same<typeTMP, string*>::value, array<typeTMP>&>::type WriteFile(const char* Path);
            template <typename typeTMP = type> typename std::enable_if<std::is_same<typeTMP, string>::value, array<typeTMP>&>::type ReadFile(const char* Path);
            template <typename typeTMP = type> typename std::enable_if<std::is_same<typeTMP, string*>::value, array<typeTMP>&>::type ReadFile(const char* Path);

            array<type>& Clear();

        private:
            uint64 length;
            type* elements;

    };

    //____________________________________________NeoString.hpp____________________________________________//

    class string
    {
        public:
            string();
            string(std::initializer_list<char> Characters);
            string(std::initializer_list<const char*> Literals);
            string(std::initializer_list<string*> Strings);
            string(std::initializer_list<uint64> Numbers);
            string(std::initializer_list<sint64> Numbers);
            string(std::initializer_list<double> Numbers);
            ~string();

            uint64 Length();
            const char* operator () ();
            char& operator [] (uint64 Index);

            string& operator = (std::initializer_list<char> Characters);
            string& operator = (std::initializer_list<const char*> Literals);
            string& operator = (std::initializer_list<string*> Strings);
            string& operator = (std::initializer_list<uint64> Numbers);
            string& operator = (std::initializer_list<sint64> Numbers);
            string& operator = (std::initializer_list<double> Numbers);

            string& operator -= (std::initializer_list<char> Characters);
            string& operator -= (std::initializer_list<const char*> Literals);
            string& operator -= (std::initializer_list<string*> Strings);
            string& operator -= (std::initializer_list<uint64> Numbers);
            string& operator -= (std::initializer_list<sint64> Numbers);
            string& operator -= (std::initializer_list<double> Numbers);

            string& operator += (std::initializer_list<char> Characters);
            string& operator += (std::initializer_list<const char*> Literals);
            string& operator += (std::initializer_list<string*> Strings);
            string& operator += (std::initializer_list<uint64> Numbers);
            string& operator += (std::initializer_list<sint64> Numbers);
            string& operator += (std::initializer_list<double> Numbers);

            bool operator == (char Character);
            bool operator == (const char* Literal);
            bool operator == (string* String);
            bool operator == (uint64 Number);
            bool operator == (sint64 Number);
            bool operator == (double Number);
            bool operator != (char Character);
            bool operator != (const char* Literal);
            bool operator != (string* String);
            bool operator != (uint64 Number);
            bool operator != (sint64 Number);
            bool operator != (double Number);

            string& Insert(uint64 Index, std::initializer_list<char> Characters);
            string& Insert(uint64 Index, std::initializer_list<const char*> Literals);
            string& Insert(uint64 Index, std::initializer_list<string*> Strings);
            string& Insert(uint64 Index, std::initializer_list<uint64> Numbers);
            string& Insert(uint64 Index, std::initializer_list<sint64> Numbers);
            string& Insert(uint64 Index, std::initializer_list<double> Numbers);

            string& Remove(uint64 Index, uint64 Length);

            bool Contains(std::initializer_list<char> Characters);
            bool Contains(std::initializer_list<const char*> Literals);
            bool Contains(std::initializer_list<string*> Strings);
            bool Contains(std::initializer_list<uint64> Numbers);
            bool Contains(std::initializer_list<sint64> Numbers);
            bool Contains(std::initializer_list<double> Numbers);

            string& Read();
            uint64 Split(char Separator, array<string>* Result);
            uint64 Split(char Separator, array<string*>* Result);
            string& Reverse();

            uint64 ToUINT();
            uint64 ToUINT(bool* Success);
            sint64 ToSINT();
            sint64 ToSINT(bool* Success);
            double ToDOUBLE();
            double ToDOUBLE(bool* Success);

            static uint64 LiteralLength(const char* Literal);

        private:
            uint64 length;
            char* literal;

            string* ToString(uint64 Value);
            string* ToString(sint64 Value);
            string* ToString(double Value);
            
    };

    //____________________________________________NeoMemory.hpp____________________________________________//

    class memory
    {
        public:
            static bool Compare(const void* Source1, const void* Source2, uint64 Size);
            static uint8 Swap(void* Source1, void* Source2, uint64 Size);
            static void* Copy(const void* Source, uint64 Size);
            static uint8 CopyTo(const void* Source, void* Destination, uint64 Size);
            static void* Load(const char* FilePath, uint64 Size);
            static uint8 LoadTo(const char* FilePath, void* Destination, uint64 Size);
            static uint8 Save(const void* Source, uint64 Size, const char* FilePath);

    };

    //______________________________________STD_INITIALIZER_LIST.hpp_______________________________________//

    template <typename type> bool initializer_list_Contains(std::initializer_list<type> initializer_list, std::initializer_list<type> elements);
    template <typename type> bool initializer_list_Contains(std::initializer_list<type> initializer_list, array<type>* elements);

    //_____________________________________________NeoArray.cpp____________________________________________//

    template <typename type> array<type>::array()
    {
        this->length = 0;
        this->elements = NULL;
    }

    template <typename type> array<type>::array(uint64 Length)
    {
        if ((this->length = Length) == 0)
        {
            this->elements = NULL;
        }
        else
        {
            if ((this->elements = (type*)malloc(sizeof(type) * this->length)) == NULL)
            {
                printf("neo::array(): Memory allocation failed\nParams: Length: %lld\n", Length);
                exit(1);
            }

            for (uint64 i = 0; i < this->length; i++)
            {
                new (&this->elements[i]) type;
            }
        }
    }

    template <typename type> array<type>::array(std::initializer_list<type> Elements)
    {
        if ((this->length = Elements.size()) == 0)
        {
            this->elements = NULL;
        }
        else
        {
            if ((this->elements = (type*)malloc(sizeof(type) * this->length)) == NULL)
            {
                printf("neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n", sizeof(type), Elements.size());
                exit(1);
            }

            memory::CopyTo(Elements.begin(), this->elements, sizeof(type) * this->length);
        }
    }

    template <typename type> array<type>::array(std::initializer_list<array<type>*> Arrays)
    {
        if (Arrays.size() == 0)
        {
            this->length = 0;
            this->elements = NULL;
        }
        else
        {
            this->length = 0;
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                if (Arrays.begin()[i] == NULL)
                {
                    printf("neo::array(): Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
                if (Arrays.begin()[i] == this)
                {
                    printf("neo::array(): Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }

                this->length += Arrays.begin()[i]->length;
            }

            if ((this->elements = (type*)malloc(sizeof(type) * this->length)) == NULL)
            {
                printf("neo::array(): Memory allocation failed\nParams: Arrays(type, length): %ld, %ld\n", sizeof(type), Arrays.size());
                exit(1);
            }

            for (uint64 i = 0, j = 0; i < Arrays.size(); i++)
            {
                memory::CopyTo(Arrays.begin()[i]->elements, &this->elements[j], sizeof(type) * Arrays.begin()[i]->length);
                j += Arrays.begin()[i]->length;
            }
        }
    }

    template <typename type> array<type>::~array()
    {
        for (uint64 i = 0; i < this->length; i++)
        {
            this->elements[i].~type();
        }

        free(this->elements);
    }

    template <typename type> uint64 array<type>::Length()
    {
        return this->length;
    }

    template <typename type> type& array<type>::operator [] (uint64 Index)
    {
        if (this->length <= Index)
        {
            printf("neo::array[]: Index out of range\nParams: Index: %lld\n", Index);
            exit(1);
        }

        return this->elements[Index];
    }

    template <typename type> array<type>& array<type>::operator = (std::initializer_list<type> Elements)
    {
        for (uint64 i = 0; i < this->length; i++)
        {
            this->elements[i].~type();
        }

        if (Elements.size() == 0)
        {
            this->length = 0;
            free(this->elements);
            this->elements = NULL;
        }
        else
        {
            if (this->length != Elements.size() && (this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length = Elements.size()))) == NULL)
            {
                printf("neo::array=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n", sizeof(type), Elements.size());
                exit(1);
            }

            memory::CopyTo(Elements.begin(), this->elements, sizeof(type) * this->length);
        }

        return *this;
    }

    template <typename type> array<type>& array<type>::operator = (std::initializer_list<array<type>*> Arrays)
    {
        uint64 lengthPrev;

        for (uint64 i = 0; i < this->length; i++)
        {
            this->elements[i].~type();
        }

        if (Arrays.size() == 0)
        {
            this->length = 0;
            free(this->elements);
            this->elements = NULL;
        }
        else 
        {
            lengthPrev = this->length;
            this->length = 0;
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                if (Arrays.begin()[i] == NULL)
                {
                    printf("neo::array=: Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
                if (Arrays.begin()[i] == this)
                {
                    printf("neo::array=: Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }

                this->length += Arrays.begin()[i]->length;
            }

            if (this->length != lengthPrev && (this->elements = (type*)realloc(this->elements, sizeof(type) * this->length)) == NULL)
            {
                printf("neo::array=: Memory allocation failed\nParams: Arrays(type, length): %ld %ld\n", sizeof(type), Arrays.size());
                exit(1);
            }

            for (uint64 i = 0, j = 0; i < Arrays.size(); i++)
            {
                memory::CopyTo(Arrays.begin()[i]->elements, &this->elements[j], sizeof(type) * Arrays.begin()[i]->length);
                j += Arrays.begin()[i]->length;
            }
        }

        return *this;
    }

    template <typename type> array<type>& array<type>::operator -= (std::initializer_list<type> Elements)
    {
        if (Elements.size() != 0)
        {
            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length += Elements.size()))) == NULL)
            {
                printf("neo::array-=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n", sizeof(type), Elements.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Elements.size() <= i; i--)
            {
                this->elements[i] = this->elements[i - Elements.size()];
            }

            memory::CopyTo(Elements.begin(), this->elements, sizeof(type) * Elements.size());
        }

        return *this;
    }

    template <typename type> array<type>& array<type>::operator -= (std::initializer_list<array<type>*> Arrays)
    {
        uint64 lengthPrev;

        if (Arrays.size() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                if (Arrays.begin()[i] == NULL)
                {
                    printf("neo::array-=: Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
                if (Arrays.begin()[i] == this)
                {
                    printf("neo::array-=: Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }

                this->length += Arrays.begin()[i]->length;
            }

            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * this->length)) == NULL)
            {
                printf("neo::array-=: Memory allocation failed\nParams: Arrays(type, length): %ld %ld\n", sizeof(type), Arrays.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; this->length - lengthPrev <= i; i--)
            {
                this->elements[i] = this->elements[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = 0; i < Arrays.size(); i++)
            {
                memory::CopyTo(Arrays.begin()[i]->elements, &this->elements[j], sizeof(type) * Arrays.begin()[i]->length);
                j += Arrays.begin()[i]->length;
            }
        }

        return *this;
    }

    template <typename type> array<type>& array<type>::operator += (std::initializer_list<type> Elements)
    {
        if (Elements.size() != 0)
        {
            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length += Elements.size()))) == NULL)
            {
                printf("neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n", sizeof(type), Elements.size());
                exit(1);
            }

            memory::CopyTo(Elements.begin(), &this->elements[this->length - Elements.size()], sizeof(type) * Elements.size());
        }

        return *this;
    }

    template <typename type> array<type>& array<type>::operator += (std::initializer_list<array<type>*> Arrays)
    {
        uint64 lengthPrev;

        if (Arrays.size() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                if (Arrays.begin()[i] == NULL)
                {
                    printf("neo::array+=: Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
                if (Arrays.begin()[i] == this)
                {
                    printf("neo::array+=: Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }

                this->length += Arrays.begin()[i]->length;
            }

            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * this->length)) == NULL)
            {
                printf("neo::array+=: Memory allocation failed\nParams: Arrays(type, length): %ld, %ld\n", sizeof(type), Arrays.size());
                exit(1);
            }

            for (uint64 i = 0, j = lengthPrev; i < Arrays.size(); i++)
            {
                memory::CopyTo(Arrays.begin()[i]->elements, &this->elements[j], sizeof(type) * Arrays.begin()[i]->length);
                j += Arrays.begin()[i]->length;
            }
        }

        return *this;
    }

    template <typename type> bool array<type>::operator == (array<type>* Array)
    {
        if (Array == NULL || this->length != Array->length)
        {
            return false;
        }

        if (this == Array)
        {
            return true;
        }

        return memory::Compare(this->elements, Array->elements, sizeof(type) * this->length);
    }

    template <typename type> bool array<type>::operator != (array<type>* Array)
    {
        return !(*this == Array);
    }

    template <typename type> array<type>& array<type>::Insert(uint64 Index, uint64 Length)
    {
        if (this->length < Index)
        {
            printf("neo::array.Insert(): Index out of range\nParams: Index: %lld, Length: %lld\n", Index, Length);
            exit(1);
        }

        if (Length != 0)
        {
            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length += Length))) == NULL)
            {
                printf("neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n", Index, Length);
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + Length <= i; i--)
            {
                this->elements[i] = this->elements[i - Length];
            }

            for (uint64 i = Index; i < Index + Length; i++)
            {
                new (&this->elements[i]) type;
            }
        }

        return *this;
    }

    template <typename type> array<type>& array<type>::Insert(uint64 Index, std::initializer_list<type> Elements)
    {
        if (this->length < Index)
        {
            printf("neo::array.Insert(): Index out of range\nParams: Index: %lld, Elements(type, length): %ld, %ld\n", Index, sizeof(type), Elements.size());
            exit(1);
        }

        if (Elements.size() != 0)
        {
            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length += Elements.size()))) == NULL)
            {
                printf("neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Elements(type, length): %ld, %ld\n", Index, sizeof(type), Elements.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + Elements.size() <= i; i--)
            {
                this->elements[i] = this->elements[i - Elements.size()];
            }

            memory::CopyTo(Elements.begin(), &this->elements[Index], sizeof(type) * Elements.size());
        }

        return *this;
    }

    template <typename type> array<type>& array<type>::Insert(uint64 Index, std::initializer_list<array<type>*> Arrays)
    {
        uint64 lengthPrev;

        if (this->length < Index)
        {
            printf("neo::array.Insert(): Index out of range\nParams: Index: %lld, Arrays(type, length): %ld, %ld\n", Index, sizeof(type), Arrays.size());
            exit(1);
        }

        if (Arrays.size() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                if (Arrays.begin()[i] == NULL)
                {
                    printf("neo::array.Insert(): Array must not be NULL\nParams: Index: %lld, Arrays(type, length): %ld, %ld\n", Index, sizeof(type), Arrays.size());
                    exit(1);
                }
                if (Arrays.begin()[i] == this)
                {
                    printf("neo::array.Insert(): Array must not be Self\nParams: Index: %lld, Arrays(type, length): %ld, %ld\n", Index, sizeof(type), Arrays.size());
                    exit(1);
                }

                this->length += Arrays.begin()[i]->length;
            }

            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * this->length)) == NULL)
            {
                printf("neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Arrays(type, length): %ld, %ld\n", Index, sizeof(type), Arrays.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + this->length - lengthPrev <= i; i--)
            {
                this->elements[i] = this->elements[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = Index; i < Arrays.size(); i++)
            {
                memory::CopyTo(Arrays.begin()[i]->elements, &this->elements[j], sizeof(type) * Arrays.begin()[i]->length);
                j += Arrays.begin()[i]->length;
            }
        }

        return *this;
    }

    template <typename type> array<type>& array<type>::Remove(uint64 Index, uint64 Length)
    {
        if (this->length <= Index)
        {
            printf("neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n", Index, Length);
            exit(1);
        }
        if (this->length < Index + Length)
        {
            printf("neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n", Index, Length);
            exit(1);
        }

        if (Length != 0)
        {
            for (uint64 i = Index; i < Index + Length; i++)
            {
                this->elements[i].~type();
            }

            if ((this->length -= Length) == 0)
            {
                free(this->elements);
                this->elements = NULL;
            }
            else
            {
                for (uint64 i = Index; i < this->length; i++)
                {
                    this->elements[i] = this->elements[i + Length];
                }

                if ((this->elements = (type*)realloc(this->elements, sizeof(type) * this->length)) == NULL)
                {
                    printf("neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n", Index, Length);
                    exit(1);
                }
            }
        }

        return *this;
    }

    template <typename type> bool array<type>::Contains(std::initializer_list<type> Elements)
    {
        if (this->length == 0 || Elements.size() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < this->length; i++)
        {
            for (uint64 j = 0; j < Elements.size(); j++)
            {
                if (this->elements[i] == Elements.begin()[j])
                {
                    return true;
                }
            }
        }

        return false;
    }

    template <typename type> bool array<type>::Contains(std::initializer_list<array<type>*> Arrays)
    {
        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i] == NULL)
            {
                printf("neo::array.Contains(): Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                exit(1);
            }
            if (Arrays.begin()[i] == this)
            {
                return true;
            }
        }

        if (this->length == 0 || Arrays.size() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < this->length; i++)
        {
            for (uint64 j = 0; j < Arrays.size(); j++)
            {
                for (uint64 k = 0; k < Arrays.begin()[j]->length; k++)
                {
                    if (this->elements[i] == Arrays.begin()[j]->elements[k])
                    {
                        return true;
                    }
                }
            }
        }

        return false;
    }

    template <typename type> array<type>& array<type>::Reverse()
    {
        type tmp;

        for (uint64 i = 0; i < this->length / 2; i++)
        {
            tmp = this->elements[i];
            this->elements[i] = this->elements[this->length - 1 - i];
            this->elements[this->length - 1 - i] = tmp;
        }

        return *this;
    }

    template <typename type> template <typename typeTMP> typename std::enable_if<std::is_same<typeTMP, const char*>::value, array<typeTMP>&>::type array<type>::WriteFile(const char* Path)
    {
        FILE* file;

        if (Path == NULL)
        {
            printf("neo::array.WriteFile(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }
        for (uint64 i = 0; i < this->length; i++)
        {
            if (this->elements[i] == NULL)
            {
                printf("neo::array.WriteFile(): Array[%lld] must not be NULL\nParams: Path: %s\n", i, Path);
                exit(1);
            }
        }

        if ((file = fopen(Path, "w")) != NULL)
        {
            for (uint64 i = 0; i < this->length; i++)
            {
                fprintf(file, "%s\n", this->elements[i]);
            }
            fclose(file);
        }

        return *this;
    }

    template <typename type> template <typename typeTMP> typename std::enable_if<std::is_same<typeTMP, string>::value, array<typeTMP>&>::type array<type>::WriteFile(const char* Path)
    {
        FILE* file;

        if (Path == NULL)
        {
            printf("neo::array.WriteFile(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }
        for (uint64 i = 0; i < this->length; i++)
        {
            if (this->elements[i]() == NULL)
            {
                printf("neo::array.WriteFile(): Array[%lld]() must not be NULL\nParams: Path: %s\n", i, Path);
                exit(1);
            }
        }

        if ((file = fopen(Path, "w")) != NULL)
        {
            for (uint64 i = 0; i < this->length; i++)
            {
                fprintf(file, "%s\n", this->elements[i]());
            }
            fclose(file);
        }

        return *this;
    }

    template <typename type> template <typename typeTMP> typename std::enable_if<std::is_same<typeTMP, string*>::value, array<typeTMP>&>::type array<type>::WriteFile(const char* Path)
    {
        FILE* file;

        if (Path == NULL)
        {
            printf("neo::array.WriteFile(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }
        for (uint64 i = 0; i < this->length; i++)
        {
            if (this->elements[i] == NULL)
            {
                printf("neo::array.WriteFile(): Array[%lld] must not be NULL\nParams: Path: %s\n", i, Path);
                exit(1);
            }
            if ((*this->elements[i])() == NULL)
            {
                printf("neo::array.WriteFile(): (*Array[%lld])() must not be NULL\nParams: Path: %s\n", i, Path);
                exit(1);
            }
        }

        if ((file = fopen(Path, "w")) != NULL)
        {
            for (uint64 i = 0; i < this->length; i++)
            {
                fprintf(file, "%s\n", (*this->elements[i])());
            }
            fclose(file);
        }

        return *this;
    }

    template <typename type> template <typename typeTMP> typename std::enable_if<std::is_same<typeTMP, string>::value, array<typeTMP>&>::type array<type>::ReadFile(const char* Path)
    {
        FILE* file;
        char tmp;

        if (Path == NULL)
        {
            printf("neo::array.ReadFile(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }
        if (this->length != 0)
        {
            printf("neo::array.ReadFile(): This must be empty\nParams: Path: %s\n", Path);
            exit(1);
        }

        if ((file = fopen(Path, "r")) != NULL)
        {
            this->Insert(this->length, 1);

            while (true)
            {
                tmp = fgetc(file);

                if (feof(file))
                {
                    if (this->elements[this->length - 1].Length() == 1)
                    {
                        this->Remove(this->length - 1, 1);
                    }
                    break;
                }

                if (tmp != '\n')
                {
                    this->elements[this->length - 1] += {tmp};
                }
                else
                {
                    this->Insert(this->length, 1);
                }
            }

            fclose(file);
        }

        return *this;
    }

    template <typename type> template <typename typeTMP> typename std::enable_if<std::is_same<typeTMP, string*>::value, array<typeTMP>&>::type array<type>::ReadFile(const char* Path)
    {
        FILE* file;
        char tmp;

        if (Path == NULL)
        {
            printf("neo::array.ReadFile(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }
        if (this->length != 0)
        {
            printf("neo::array.ReadFile(): This must be empty\nParams: Path: %s\n", Path);
            exit(1);
        }

        if ((file = fopen(Path, "r")) != NULL)
        {
            this->Insert(this->length, 1);
            this->elements[this->length - 1] = new string;

            while(true)
            {
                tmp = fgetc(file);

                if (feof(file))
                {
                    if (this->elements[this->length - 1]->Length() == 1)
                    {
                        delete this->elements[this->length - 1];
                        this->Remove(this->length - 1, 1);
                    }
                    break;
                }

                if (tmp != '\n')
                {
                    *this->elements[this->length - 1] += {tmp};
                }
                else
                {
                    this->Insert(this->length, 1);
                    this->elements[this->length - 1] = new string;
                }
            }

            fclose(file);
        }

        return *this;
    }

    template <typename type> array<type>& array<type>::Clear()
    {
        for (uint64 i = 0; i < this->length; i++)
        {
            this->elements[i].~type();
        }

        this->length = 0;
        free(this->elements);
        this->elements = NULL;

        return *this;
    }

    //______________________________________STD_INITIALIZER_LIST.cpp_______________________________________//

    template <typename type> bool initializer_list_Contains(std::initializer_list<type> initializer_list, std::initializer_list<type> elements)
    {
        for (uint64 i = 0; i < initializer_list.size(); i++)
        {
            for (uint64 j = 0; j < elements.size(); j++)
            {
                if (initializer_list.begin()[i] == elements.begin()[j])
                {
                    return true;
                }
            }
        }

        return false;
    }

    template <typename type> bool initializer_list_Contains(std::initializer_list<type> initializer_list, array<type>* elements)
    {
        if (elements == NULL)
        {
            printf("neo::initializer_list_Contains(): elements must not be NULL\nParams: initializer_list(length): %ld, elements: %p\n", initializer_list.size(), elements);
            exit(1);
        }

        for (uint64 i = 0; i < initializer_list.size(); i++)
        {
            for (uint64 j = 0; j < elements->Length(); j++)
            {
                if (initializer_list.begin()[i] == (*elements)[j])
                {
                    return true;
                }
            }
        }

        return false;
    }
}
