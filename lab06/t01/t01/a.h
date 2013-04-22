#ifndef A_H
#define A_H

class A
{
public:
    void f();
    virtual void g()=0;
};

class B : public A
{
    void g();
};

class C : public A
{
    void g();
};

#endif // A_H
