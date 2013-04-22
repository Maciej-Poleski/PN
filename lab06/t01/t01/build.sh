g++ -Wall -Wextra -pedantic main.cpp -c -o main.o -O0
g++ -Wall -Wextra -pedantic a.cpp -c -o a.o -O0
g++ -Wall -Wextra -pedantic -o main0 a.o main.o -O0

g++ -Wall -Wextra -pedantic main.cpp -c -o main.o -O2
g++ -Wall -Wextra -pedantic a.cpp -c -o a.o -O2
g++ -Wall -Wextra -pedantic -o main2 a.o main.o -O2
