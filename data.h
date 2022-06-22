#ifndef DATA_H
#define DATA_H

#include <unordered_map>
#include <functional>
#include <cstring>
#include "hash_class.cpp"
#include "hash.h"
using namespace std;
class Data{
public:
    unsigned char str[DATA_LEN];
    Data& operator = (Data an);
    uint Hash(uint num = 0) const{
        return Hash::BOBHash32(str, DATA_LEN, num);
    } //the hash num of the data
};
struct Packet{
    Data dat;
    ts_t timestamp;
    bool operator < (const Packet&b) const {
        return timestamp < b.timestamp;
    }
};

bool operator < (Data bn, Data an);
bool operator == (Data bn, Data an);

class My_Hash{
public:
    size_t operator()(const Data dat) const{
        return RSHash(dat.str, DATA_LEN);
    }
};


size_t packet_hash( const Data & p ) 
{
    string s((const char*)p.str);
    return hash<string>()(s) ;
}

Data& Data::operator = (Data an){
    for(int i = 0;i < DATA_LEN;++i){
        str[i] = an.str[i];
    }
    return *this;
}

bool operator < (Data bn, Data an){
    for(int i = 0;i < DATA_LEN;++i){
        if(bn.str[i] < an.str[i])
            return true;
        else if(bn.str[i] > an.str[i])
            return false;
    }
    return false;
}


bool operator == (Data bn, Data an){
    for(int i = 0;i < DATA_LEN;++i){
        if(bn.str[i] != an.str[i])
            return false;
    }
    return true;
}

struct Element{
	Data item;
	int w;
    int window_number;
    bool operator < (Element b)const{
        return w < b.w || (w == b.w && item < b.item);
    }
    bool operator == (const Element&b)const{
        return w == b.w && item == b.item;
    }
    bool operator > (Element b)const{
        return w > b.w || (w == b.w && b.item < item );
    }
};
struct HashRet{
	int*ret;
    HashRet(int k){
        ret = new int[k];
    }
};

#endif// DATA_H