#include <cstdio>
#include <cstdlib>

#include "filter.h"
using namespace std;

int main(int argc, char * argv[])
{
    FILE * f;

    if (argc < 2)
        return 1;
    if ((f = fopen(argv[1], "rb")) == NULL)
    {
        fprintf(stderr, "Cannot read matrix.\n");
        return 1;
    }

    float m[9];
    for (int i = 0; i < 9; ++i)
        fscanf(f, "%f", &(m[i]));

    fclose(f);

    RGBImage src;
    RGBImage dst;
    uint32_t maxcolor;

    scanf("P6 %u %u %u", &(src.width), &(src.height), &maxcolor);
    fgetc(stdin);
    src.data = (uint8_t *) malloc(3*src.width*src.height);
    fread(src.data, 3*src.width, src.height, stdin);

    dst.width = src.width;
    dst.height = src.height;
    dst.data = (uint8_t *) malloc(3*src.width*src.height);

    for (size_t i = 0; i < 64; ++i)
        filter(&dst, &src, m);

    printf("P6 %u %u 255\n", dst.width, dst.height);
    fwrite(dst.data, 3*dst.width, dst.height, stdout);

    free(src.data);
    free(dst.data);

    return 0;
}
