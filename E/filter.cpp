#include <cstdint>
#include <cassert>

#include "filter.h"

typedef float v4f __attribute__((vector_size(16)));

static v4f getByte(const RGBImage *image, const long y, const long x) __attribute((const));
static v4f getByte(const RGBImage *image, const long y, const long x)
{
    if(x<0 || y<0 || x>=image->width || y>=image->height)
        return v4f {0.,0.,0.,0.};
    return v4f {
        static_cast<float>(image->data[image->width*y*3+x*3]),
        static_cast<float>(image->data[image->width*y*3+x*3+1]),
        static_cast<float>(image->data[image->width*y*3+x*3+2]),
        0.f
    };
}

void filter(struct RGBImage * dst, const struct RGBImage * src, const float * matrix)
{
    const float localMatrix[3][3]= {
        {matrix[0],matrix[1],matrix[2]},
        {matrix[3],matrix[4],matrix[5]},
        {matrix[6],matrix[7],matrix[8]},
    };
    for(long i=0; i<src->height; ++i)
    {
        for(long j=0; j<src->width; ++j)
        {
            v4f output={0.,0.,0.,0.};
            for(long a=-1; a<=1; ++a)
            {
                for(long b=-1; b<=1; ++b)
                {
                    output+=getByte(src,i+a,j+b)*localMatrix[a+1][b+1];
                }
            }
            dst->data[dst->width*i*3+j*3]=(output[0]<0)?0:((output[0]>255)?255:static_cast<uint8_t>(output[0]));
            dst->data[dst->width*i*3+j*3+1]=(output[1]<0)?0:((output[1]>255)?255:static_cast<uint8_t>(output[1]));
            dst->data[dst->width*i*3+j*3+2]=(output[2]<0)?0:((output[2]>255)?255:static_cast<uint8_t>(output[2]));
        }
    }
}
