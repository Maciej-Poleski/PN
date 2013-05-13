#ifndef __THREADS_H__
#define __THREADS_H__

// typ funkcji uruchamianej w wątku: przyjmuje dwa argumenty, nie zwraca żadnej wartości
typedef void (*thread_t)(unsigned long, unsigned long);

// tworzy nowy wątek z podanymi argumentami, przydzielając mu nowy stos (min. 64kB)
// zwraca numer utworzonego wątku (0 do 255 -- można stworzyć maksymalnie 256 wątków)
// lub -1 jeśli wątku nie uda się stworzyć
int th_create(thread_t, unsigned long, unsigned long);

// przełącza wykonywanie na inny wątek
void th_yield();

// kończy działanie bieżącego wątku, zwalniając pamięć jego stosu
void th_exit();

// zwraca numer bieżącego wątku
int th_getid();

// uruchamia zarejestrowane wątki
// powrót z tej funkcji następuje, gdy ostatni wątek kończy działanie
void run();

#endif