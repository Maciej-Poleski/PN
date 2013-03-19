#ifndef NATURAL_H
#define NATURAL_H

class Natural
{
public:
    // konstruktor domyślny, 0
    Natural();

    // konstruktor z unsigned long int
    Natural(long unsigned int n);

    // konstruktor z (poprawnej) reprezentacji szesnastkowej (0-9, a-f)
    Natural(const char *);

    // konstruktor kopiujący
    Natural(const Natural& n);

    // destruktor
    ~Natural();

    // operator przypisania
    Natural & operator=(const Natural &);

    // pre- i post-inkrementacja
    Natural & operator++();
    Natural operator++(int);

    // dodawanie
    Natural & operator+=(const Natural &);
    Natural operator+(const Natural &) const;

    // mnożenie (dozwolona złożoność kwadratowa)
    Natural & operator*=(const Natural &);
    Natural operator*(const Natural &) const;

    // porównania
    bool operator==(const Natural &) const;
    bool operator!=(const Natural &) const;
    bool operator<(const Natural &) const;
    bool operator<=(const Natural &) const;
    bool operator>(const Natural &) const;
    bool operator>=(const Natural &) const;

    // sprawdzenie czy liczba jest dodatnia
    operator bool() const;

    // długość liczby w bitach - długość zera to 0
    unsigned long int Size() const;

    // wypisanie na stdout w postaci szesnastkowej bez zer wiodących
    void Print() const; // hex to stdout
    
private:
    unsigned long *begin,*end;
};

#endif // NATURAL_H
