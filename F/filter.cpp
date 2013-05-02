#include <cstdint>
#include <cassert>

#include "filter.h"

typedef float v4f __attribute__((vector_size(16)));
typedef int32_t v4si __attribute__((vector_size(16)));

static v4f getByte(const RGBImage *image, const long y, const long x) __attribute((const));
static v4f getByte(const RGBImage *image, const long y, const long x)
{
    if(x<0 || y<0 || x>=image->width || y>=image->height)
        return v4f {0.,0.,0.,0.};
    const uint8_t *i=image->data+image->width*y*3+x*3;
    return v4f {
        static_cast<float>(*i),
        static_cast<float>(*(i+1)),
        static_cast<float>(*(i+2)),
        0.f
    };
}

void filter(struct RGBImage * dst, const struct RGBImage * src, const float * matrix)
{
    for(long y=0; y<src->height; ++y)
    {
        for(long x=0; x<src->width; ++x)
        {
            v4f output= {0.,0.,0.,0.};

            for(long a=-1; a<=1; ++a)
            {
                for(long b=-1; b<=1; ++b)
                {
                    output+=getByte(src,y+a,x+b)*matrix[(a+1)*3+(b+1)];
                }
            }
            output=__builtin_ia32_maxps(output,v4f {0.f,0.f,0.f,0.f});
            output=__builtin_ia32_minps(output,v4f {255.f,255.f,255.f,255.f});
            v4si out= __builtin_ia32_cvtps2dq(output);
            uint8_t *ptr=dst->data+dst->width*y*3+x*3;
            *ptr++=static_cast<uint8_t>(out[0]);
            *ptr++=static_cast<uint8_t>(out[1]);
            *ptr++=static_cast<uint8_t>(out[2]);
        }
    }
}
