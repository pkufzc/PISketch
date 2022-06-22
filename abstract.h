#ifndef ABSTRACT_H
#define ABSTRACT_H

#include "data.h"
#include <iostream>

class Abstract{
public:
    string name;
    double aae;
    double are;
    double pr;
    double cr;
    int HIT;

    virtual void Init(const Data& data, uint time) = 0;
    // virtual void Check(HashMap mp) = 0;
    virtual int getMEM() = 0;
    virtual int Query(const Data& data) = 0;

    virtual ~Abstract(){}

};

#endif // ABSTRACT_H
