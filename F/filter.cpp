#include <cstdint>
#include <cassert>

#include "filter.h"

typedef float v4f __attribute__((vector_size(16)));
typedef int32_t v4si __attribute__((vector_size(16)));
typedef int16_t v8hi __attribute__((vector_size(16)));

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
                    output+=getByte(src,y+a,x+b)*v4f{matrix[(a+1)*3+(b+1)],matrix[(a+1)*3+(b+1)],matrix[(a+1)*3+(b+1)],matrix[(a+1)*3+(b+1)]};
                }
            }
            auto a=__builtin_ia32_cvtps2dq(output);
            auto b=__builtin_ia32_packssdw128(a,a);
            auto out=__builtin_ia32_packuswb128(b,b);
            uint8_t *ptr=dst->data+dst->width*y*3+x*3;
            *ptr++=static_cast<uint8_t>(out[0]);
            *ptr++=static_cast<uint8_t>(out[1]);
            *ptr++=static_cast<uint8_t>(out[2]);
        }
    }
}
