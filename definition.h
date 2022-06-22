#ifndef DEFINITION_H
#define DEFINITION_H
#define COUNTER_SIZE 30
#define MAX_HASH_NUM 1000000
#define MAX_INPUT_SIZE 8000000
#define PACKET_NUM 0x7fffffff
typedef unsigned char uchar;
// typedef unsigned int uint;
// typedef unsigned long long ulong;
#ifdef CAIDA18
    typedef double ts_t;
    #define DATA_LEN 13
    #define FILENAME "dataset/CAIDA18.dat"
    #define OUTPUT "CAIDA18.out"
    #define APT 0
#endif

#ifdef MAWI
    typedef uint64_t ts_t;
    #define DATA_LEN 13
    #define FILENAME "dataset/MAWI.dat"
    #define OUTPUT "MAWI.out"
    #define APT 0
#endif

#ifdef NET
    typedef uint32_t ts_t;
    #define DATA_LEN 4
    #define FILENAME "dataset/NET.dat"
    #define OUTPUT "NET.out"
    #define APT 0
#endif

#ifdef DC
    typedef double ts_t;
    #define DATA_LEN 13
    #define FILENAME "dataset/DC.dat"
    #define OUTPUT "DC.out"
    #define APT 0
#endif

#ifdef ZIPF
    typedef double ts_t;
    #define DATA_LEN 4
    #define FILENAME "dataset/ZIPF.dat"
    #define OUTPUT "ZIPF.out"
    #define APT 0
#endif
// #define APTA
#ifdef APTA
    typedef uint64_t ts_t;
    #define DATA_LEN 8
    #define FILENAME "dataset/APTMIX.dat"
    #define OUTPUT "APT.out"
    #define APTFILE "dataset/ATK.dat"
    #define APT 1
#endif

// #define THRESHOLD 80
// #define WINDOW_L 3

#define OO_alpha 0.25
#define PIE_alpha 0.01
#define PI_alpha 0.1
#define CM_K 3
//#define min(x, y) (x < y? x:y)
//#define max(x, y) (x > y? x:y)

#endif // DEFINITION_H
