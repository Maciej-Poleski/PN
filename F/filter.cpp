#include <cstdint>
#include <cassert>

#include "filter.h"

typedef float v4f __attribute__((vector_size(16)));
typedef int32_t v4si __attribute__((vector_size(16)));
typedef int16_t v8hi __attribute__((vector_size(16)));
typedef char v16qi __attribute__((vector_size(16)));
typedef char v8qi __attribute__((vector_size(8)));

static v4f getByteUnchecked(const RGBImage *image, const long y, const long x) __attribute((pure));
static v4f getByteUnchecked(const RGBImage *image, const long y, const long x)
{
    const uint8_t *i=image->data+image->width*y*3+x*3;
    return v4f {
        static_cast<float>(*i),
        static_cast<float>(*(i+1)),
        static_cast<float>(*(i+2)),
        0.f
    };
//     v16qi a=__builtin_ia32_loaddqu(reinterpret_cast<const char*>(i));
//     auto b=__builtin_ia32_punpcklbw128(a,v16qi{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0});
//     v8hi bb=*reinterpret_cast<v8hi*>(&b);
//     auto c=__builtin_ia32_punpcklwd128(bb,v8hi{0,0,0,0,0,0,0,0});
//     v4si cc=*reinterpret_cast<v4si*>(&c);
//     auto d=__builtin_ia32_cvtdq2ps(cc);
//     return d;
}


static v4f getByte(const RGBImage *image, const long y, const long x) __attribute((pure));
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

static void computePoint(struct RGBImage * dst, const struct RGBImage * src, const float * matrix,long x, long y) __asm__("computePoint");
static void computePoint(struct RGBImage * dst, const struct RGBImage * src, const float * matrix,long x, long y)
{
    v4f output= {0.,0.,0.,0.};

    for(long a=-1; a<=1; ++a)
    {
        for(long b=-1; b<=1; ++b)
        {
            output+=getByte(src,y+a,x+b)*v4f {matrix[(a+1)*3+(b+1)],matrix[(a+1)*3+(b+1)],matrix[(a+1)*3+(b+1)],matrix[(a+1)*3+(b+1)]};
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

void filter(struct RGBImage * dst, const struct RGBImage * src, const float * matrix)
{
    for(long y=1; y<src->height-1; ++y)
    {
        for(long x=1; x<src->width-1; ++x)
        {
            v4f output= {0.,0.,0.,0.};

            for(long a=-1; a<=1; ++a)
            {
                for(long b=-1; b<=1; ++b)
                {
                    output+=getByteUnchecked(src,y+a,x+b)*v4f {matrix[(a+1)*3+(b+1)],matrix[(a+1)*3+(b+1)],matrix[(a+1)*3+(b+1)],matrix[(a+1)*3+(b+1)]};
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
    for(long y=0; y<src->height; ++y)
    {
        computePoint(dst,src,matrix,0,y);
        computePoint(dst,src,matrix,src->width-1,y);
    }
    for(long x=1; x<src->width-1; ++x)
    {
        computePoint(dst,src,matrix,x,0);
        computePoint(dst,src,matrix,x,src->height-1);
    }
}
