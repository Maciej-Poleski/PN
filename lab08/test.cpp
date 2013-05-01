#include <cmath>
#include <cstdio>
#include <cstdlib>

// approximate sine using Taylor expansion
// sin(x) = x^1/1! - x^3/3! + x^5/5! - x^7/7! + ...
double apsin(double x)
{
    static double PI2 = M_PI/2.0;
    double p, s, c, d;
    long w;
    // prepare
    x /= PI2;
    w = floor(x);
    x -= w;
    x *= PI2;
    if (w&1) x = PI2-x;
    // approximate
    p = x*x;
    s = 0.0;
    for (int i=0; i<6; ++i) // 6 iterations give enough precision ;)
    {
        c = x;
        x *= p / ((4*i+2)*(4*i+3));
        d = x;
        x *= p / ((4*i+4)*(4*i+5));
        s += c-d;
    }
    // finalize
    if (w&2) s = -s;
    return s;
}

// same as above, in assembly :)
extern double asmsin(double);

// print a double and its hex representation
void show(double d)
{
    printf("%+14.10lf = 0x%016lx\n", d, *((long*)&d));
}

// just compute a bunch of sines
int main(int argc, char* argv[])
{
    int n = atoi(argv[1]);
    double sum=0;
    for (int i=0; i<n; ++i)
        sum += apsin((double)i);
    show(sum);
    return 0;
}
