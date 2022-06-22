

#include"data.h"
#include"BOBHash32.h"
#include<queue>
#include<unordered_map>
#include<iostream>
#include<map>
#include<ctime>
#include<cstring>
#include<stdlib.h>
using namespace std;

class BloomFilter{
    int k,m;
    BOBHash32* bh;
    bool *S;
public:
    BloomFilter(int _k,int _m):k(_k),m(_m){
        bh = new BOBHash32[k];
        for(int i=0;i<k;++i) bh[i].initialize( rand()%10 + 10*i );
        S = new bool[m];
        memset(S,0,sizeof(bool)*m);
    }
    ~BloomFilter(){
        delete []bh;
        delete []S;
    }
    void insert(const Data&x){
        for(int i=0;i<k;++i){
            int hi = bh[i].run((const char*)x.str,DATA_LEN) % m;
            S[hi] = 1;
        }
    }
    bool query(const Data&x){
        for(int i=0;i<k;++i){
            int hi = bh[i].run((const char*)x.str,DATA_LEN) % m;
            if(S[hi] == 0) return 0;
        }
        return 1;
    }
    void clear(){
        memset(S,0,sizeof(bool)*m);
    }
    int getMem(){
        return 1*m;
    }
};

struct Bucket{
    int *w,*window_number;
    Data *dat;
    bool *valid;
    int maxnum;
    Bucket(){}
    void init(int maxnum_){
        maxnum = maxnum_;
        valid = new bool[maxnum];
        memset(valid,0,sizeof(valid));
        w = new int[maxnum];
        window_number = new int[maxnum];
        dat = new Data[maxnum];
    }
    void insert(const Data&d,int wi){
        int mi = -1;
        for(int i=0;i<maxnum;++i){
            if(!valid[i]) continue;
            if(dat[i] == d){
                w[i] += wi;
                if(wi > 0) window_number[i] ++;
                return;
            }
            if(mi < 0 || w[i] < w[mi]) mi = i;
        }
        for(int i=0;i<maxnum;++i){
            if(!valid[i]){
                dat[i] = d;
                w[i] = wi;
                window_number[i] = 1;
                valid[i] = 1;
                return;
            }
        }
        w[mi] --;
        if(w[mi] < 0){
            dat[mi] = d;
            w[mi] = wi + 1;
            window_number[mi] = 1;
        }
    }
    pair<int,int> query(const Data&d){
        for(int i=0;i<maxnum;++i){
            if(valid[i] && dat[i] == d)
                return make_pair(w[i],window_number[i]);
        }
        return make_pair(-1,-1);
    }
};
class PISketch{
    Bucket *bucket;
    int bucket_num;
    int num_per_bucket;
    BOBHash32 bh;
    public:
    PISketch(int bn,int num_per_bucket_):bucket_num(bn){
        num_per_bucket = num_per_bucket_;
        bucket = new Bucket[bucket_num];
        for(int i=0;i<bucket_num;++i) bucket[i].init(num_per_bucket);
        bh.initialize( rand()%50 );
    }
    void insert(const Data&d,int wi){
        int pos = bh.run((const char*)d.str,DATA_LEN) %bucket_num;
        bucket[pos].insert(d,wi);
    }
    pair<int,int> query(const Data&d){
        int pos = bh.run((const char*)d.str,DATA_LEN) %bucket_num;
        return bucket[pos].query(d);
    }
    int getMem(){
        return bucket_num * num_per_bucket * ( sizeof(int) + sizeof(int) + sizeof(Data) + sizeof(bool) );
    }
};