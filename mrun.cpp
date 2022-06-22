#include"pie.h"
#include"OO_FPI.h"
#include"PISketch.h"
#include"CMSketch.h"
#include "parser.h"
#include <set>
#include <map>
#include <ctime>
#include <cmath>
#include <algorithm>
using namespace std;
const set<Data> emptyset;
//250
bool MY_cmp(pair<Data,int> a,pair<Data,int> b){
    return a.second < b.second;
}
struct Parameter{
    uint64_t input_max;
    uint64_t max_mem;
    int threshold;
    int aveV;
    int L;
    int p;
};
struct Result{
    double MEM;
    double ARE;
    double PR;
    double RR;
    double F1;
    double THP;
    double FPR;
    double FNR;
    double AAE;
    Parameter para;
    uint64_t Npi;
    void Print(){
        printf("%lf,%lf,%lf,%lf,%lf,%lf\n",MEM,ARE,PR,RR,F1,THP);
    }
    void Print_p(){
        printf("%d,%lf,%lf,%lf,%lf,%lf\n",para.p,ARE,PR,RR,F1,THP);
    }
    void Print_Nt(){
        printf("%ld,%lf,%lf,%lf,%lf,%lf\n",para.input_max,ARE,PR,RR,F1,THP);
    }
    void Print_Npi(){
        printf("%ld,%lf,%lf,%lf,%lf,%lf\n",Npi,ARE,PR,RR,F1,THP);
    }
    void Print_All(){
        printf("%d,%d,%lf,%lf,%lf,%lf,%lf,%lf,%ld\n",para.L,para.aveV,MEM,ARE,PR,RR,F1,THP,Npi);
    }
    void Print_APT(){
        printf("%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf\n",MEM,ARE,PR,RR,F1,THP,FPR,FNR,AAE);
    }
};
void OnOff_Test(Parameter para, Packet*P, Result*R, set<Data>APT_S =  emptyset,set<Data>Noise = emptyset){
    R->para = para;
    uint64_t input_max = para.input_max;
    uint64_t max_mem   = para.max_mem;
    int threshold      = para.threshold;
    int aveV           = para.aveV;
    int L              = para.L;
    int p              = para.p;

    double alpha = OO_alpha;
    int CM_L = max_mem * alpha / CM_K / sizeof(int);
    CMSketch* cm = new CMSketch(CM_L,CM_K);
    OO_FPI<Data,uint32_t,3>*oo = new OO_FPI<Data,uint32_t,3>( max_mem * (1-alpha) );

    ts_t T_interval = P[input_max-1].timestamp - P[0].timestamp;
    ts_t preTime = P[0].timestamp;
    double timeCycle = (double) T_interval / input_max * aveV;
    int currentCycle = 1;

    set<Data> s,s_all;
    map<Data,int> mp_std,mpwn_std,mpwn_my;

    for(int i=0; i<input_max;++i){
        Packet packet = P[i];
        Data item = packet.dat;
        if(packet.timestamp - preTime > timeCycle){
            s.clear();
            preTime = packet.timestamp;
            currentCycle ++;
            oo->NewWindow(currentCycle);
            // printf("%lf\n",packet.timestamp);
        }
        // Insert into
        oo->Insert(item,currentCycle);
        cm->Insert((const char*)item.str);

        s_all.insert(item);
        if(s.find(item) != s.end())
            mp_std[item] -= 1;
        else{
            mp_std[item] += L;
            mpwn_std[item]++;
        }
        s.insert(item);  
    }
    set<Data> s_std,s_my;
#if APT
    s_std = APT_S;
#else
    for(auto it:mp_std){
        if(it.second > threshold)
            s_std.insert(it.first);
    }   
#endif  
    double ARE = 0;
    double AAE = 0;
    cerr << "size:" << s_all.size() << endl;
    for(auto it:s_all){
        int wn = oo->Query(it);
        // cerr << wn << endl;
        // uint32_t wn = res.first;
        // uint32_t freq = res.second;
        int freq = cm->Query((const char*)it.str);
        // cerr << freq << endl;
        if(wn*(L+1) - freq > threshold){
            s_my.insert(it);
            double e = fabs(wn - mpwn_std[it]) / mpwn_std[it];
            // cerr << (wn - mpwn_std[it]) <<" "<< wn << " "<< mpwn_std[it]<< endl;
            ARE += e;
        }
    }
    AAE = ARE;
    ARE /= s_my.size();

    int TP=0,FP=0,TN=0,FN=0;
    for(auto it: s_my){
        if(s_std.find(it) == s_std.end()){
            if(Noise.find(it) == Noise.end())
                FP ++;
        }
        else
            TP ++;
    }
    for(auto it: s_std){
        if(s_my.find(it) == s_my.end())
            FN ++;
    }
    double FPR = (double)FP/(FP+TN);
    double FNR = (double)FN/(TP+FN);
    double PR = (double)TP/(TP+FP);
    double RR = (double)TP/(TP+FN);
    double F1 = 2*PR*RR/(PR+RR);

    R->MEM = max_mem;
    R->ARE = ARE;
    R->PR  = PR;
    R->RR  = RR;
    R->F1  = F1;
    R->Npi = s_std.size();
    R->FPR = FPR;
    R->FNR = FNR;
    R->AAE = AAE;
    return;
}

void OnOff_THP(Parameter para, Packet*P, Result*R){
    R->para = para;
    uint64_t input_max = para.input_max;
    uint64_t max_mem   = para.max_mem;
    int threshold      = para.threshold;
    int aveV           = para.aveV;
    int L              = para.L;
    int p              = para.p;

    double alpha = OO_alpha;
    int CM_L = max_mem * alpha / CM_K / sizeof(int);
    CMSketch* cm = new CMSketch(CM_L,CM_K);
    OO_FPI<Data,uint32_t,3>*oo = new OO_FPI<Data,uint32_t,3>( max_mem * (1-alpha) );

    ts_t T_interval = P[input_max-1].timestamp - P[0].timestamp;
    ts_t preTime = P[0].timestamp;
    double timeCycle = (double) T_interval / input_max * aveV;
    int currentCycle = 1;

    clock_t begt = clock();
    for(int i=0; i<input_max;++i){
        Packet packet = P[i];
        Data item = packet.dat;
        if(packet.timestamp - preTime > timeCycle){
            preTime = packet.timestamp;
            currentCycle ++;
            oo->NewWindow(currentCycle);
        }
        // Insert into
        oo->Insert(item,currentCycle);
        cm->Insert((const char*)item.str);

    }
    clock_t endt = clock();
    double tot_time = (double)(endt-begt) / CLOCKS_PER_SEC;
    double THP = (double)input_max/(tot_time)/1000000;

    R->THP = THP;
}

void PIE_Test(Parameter para, Packet*P, Result*R, set<Data>APT_S = emptyset,set<Data>Noise = emptyset){
    R->para = para;
    uint64_t input_max = para.input_max;
    uint64_t max_mem   = para.max_mem;
    int threshold      = para.threshold;
    int aveV           = para.aveV;
    int L              = para.L;
    int p              = para.p;

    double alpha = PIE_alpha;
    int CM_L = max_mem * alpha / CM_K / sizeof(int);
    CMSketch* cm = new CMSketch(CM_L,CM_K);
    Abstract* pie = new PIE(max_mem * (1-alpha),0,input_max / aveV + 1);

    ts_t T_interval = P[input_max-1].timestamp - P[0].timestamp;
    ts_t preTime = P[0].timestamp;
    double timeCycle = (double) T_interval / input_max * aveV;
    int currentCycle = 1;

    set<Data> s,s_all;
    map<Data,int> mp_std,mpwn_std,mpwn_my;

    for(int i=0; i<input_max;++i){
        Packet packet = P[i];
        Data item = packet.dat;
        if(packet.timestamp - preTime > timeCycle){
            s.clear();
            preTime = packet.timestamp;
            currentCycle ++;
            // oo->NewWindow(currentCycle);
            // printf("%lf\n",packet.timestamp);
        }
        // Insert into
        pie->Init(item,currentCycle);
        cm->Insert((const char*)item.str);

        s_all.insert(item);
        if(s.find(item) != s.end())
            mp_std[item] -= 1;
        else{
            mp_std[item] += L;
            mpwn_std[item]++;
        }
        s.insert(item);  
    }
    set<Data> s_std,s_my;
#if APT
    s_std = APT_S;
#else
    for(auto it:mp_std){
        if(it.second > threshold)
            s_std.insert(it.first);
    }   
#endif    
    double ARE = 0;
    double AAE = 0;
    for(auto it:s_all){
        int wn = pie->Query(it);
        int freq = cm->Query((const char*)it.str);
        if(wn*(L+1) - freq > threshold){
            s_my.insert(it);
            double e = fabs(wn - mpwn_std[it]) / mpwn_std[it];
            ARE += e;
        }
    }
    AAE = ARE;
    ARE /= s_my.size();
    int TP=0,FP=0,TN=0,FN=0;
    for(auto it: s_my){
        if(s_std.find(it) == s_std.end()){
            if(Noise.find(it) == Noise.end())
                FP ++;
        }
        else
            TP ++;
    }
    for(auto it: s_std){
        if(s_my.find(it) == s_my.end())
            FN ++;
    }

    double FPR = (double)FP/(FP+TN);
    double FNR = (double)FN/(TP+FN);
    double PR = (double)TP/(TP+FP);
    double RR = (double)TP/(TP+FN);
    double F1 = 2*PR*RR/(PR+RR);

    R->MEM = max_mem;
    R->ARE = ARE;
    R->PR  = PR;
    R->RR  = RR;
    R->F1  = F1;
    R->Npi = s_std.size();
    R->FPR = FPR;
    R->FNR = FNR;
    R->AAE = AAE;
    return;    
}

void PIE_THP(Parameter para, Packet*P, Result*R){
    R->para = para;
    uint64_t input_max = para.input_max;
    uint64_t max_mem   = para.max_mem;
    int threshold      = para.threshold;
    int aveV           = para.aveV;
    int L              = para.L;
    int p              = para.p;

    double alpha = PIE_alpha;
    int CM_L = max_mem * alpha / CM_K / sizeof(int);
    CMSketch* cm = new CMSketch(CM_L,CM_K);
    Abstract* pie = new PIE(max_mem * (1-alpha),0,input_max / aveV + 1);

    ts_t T_interval = P[input_max-1].timestamp - P[0].timestamp;
    ts_t preTime = P[0].timestamp;
    double timeCycle = (double) T_interval / input_max * aveV;
    int currentCycle = 1;

    clock_t begt = clock();
    for(int i=0; i<input_max;++i){
        Packet packet = P[i];
        Data item = packet.dat;
        if(packet.timestamp - preTime > timeCycle){
            preTime = packet.timestamp;
            currentCycle ++;
            // oo->NewWindow(currentCycle);
        }
        // Insert into
        pie->Init(item,currentCycle);
        cm->Insert((const char*)item.str);

    }
    clock_t endt = clock();
    double tot_time = (double)(endt-begt) / CLOCKS_PER_SEC;
    double THP = (double)input_max/(tot_time)/1000000;

    R->THP = THP;
}

void PI_Test(Parameter para, Packet*P, Result*R, set<Data> APT_S = emptyset,set<Data> Noise = emptyset){
    R->para = para;
    uint64_t input_max = para.input_max;
    uint64_t max_mem   = para.max_mem;
    int threshold      = para.threshold;
    int aveV           = para.aveV;
    int L              = para.L;
    int p              = para.p;

    double alpha = PI_alpha;
    int BF_L = max_mem * alpha / 3 * 8;
    BloomFilter *bf = new BloomFilter(3,BF_L);
    int SK_L = max_mem*(1-alpha)/p/(sizeof(int) + sizeof(int) + sizeof(Data) + sizeof(bool));
    PISketch    *sk = new PISketch(SK_L,p);

    ts_t T_interval = P[input_max-1].timestamp - P[0].timestamp;
    ts_t preTime = P[0].timestamp;
    double timeCycle = (double) T_interval / input_max * aveV;
    int currentCycle = 1;

    set<Data> s,s_all;
    map<Data,int> mp_std,mpwn_std,mpwn_my;
    for(int i=0; i<input_max;++i){
        Packet packet = P[i];
        Data item = packet.dat;
        if(packet.timestamp - preTime > timeCycle){
            s.clear();
            bf->clear();
            preTime = packet.timestamp;
            currentCycle ++;
            // printf("%lf\n",packet.timestamp);
        }
        // Insert into
        int w;
        if(bf->query(item))
            w = -1;
        else {
            bf->insert(item);
            w = L;
        }
        sk->insert(item,w);

        s_all.insert(item);
        if(s.find(item) != s.end())
            mp_std[item] -= 1;
        else{
            mp_std[item] += L;
            mpwn_std[item]++;
        }
        s.insert(item);  
    }
    set<Data> s_std,s_my;
#if APT
    s_std = APT_S;
#else
    for(auto it:mp_std){
        if(it.second > threshold)
            s_std.insert(it.first);
    }   
#endif         

    double ARE = 0;
    double AAE = 0;
    for(auto it:s_all){
        pair<int,int> res = sk->query(it);
        if(res.first > threshold){
            s_my.insert(it);
            double e = fabs(res.second - mpwn_std[it]) / mpwn_std[it];
            ARE += e;
        }
    }
    AAE = ARE;
    ARE /= s_my.size();

    int TP=0,FP=0,TN=0,FN=0;
    for(auto it: s_my){
        if(s_std.find(it) == s_std.end()){
            if(Noise.find(it) == Noise.end())
                FP ++;
        }
        else
            TP ++;
    }
    int std_freq = 0;
    for(auto it: s_std){
#if APT
        pair<int,int> res = sk->query(it);
        std_freq += (L+1) * mpwn_std[it] -mp_std[it];

        cerr<<"STD  : "<<mpwn_std[it] << endl ;
        
        cerr<<"MY   : "<<res.second << endl ;
        cerr<<"STDsc: "<<mp_std[it] << endl;
        cerr<<"MY sc: "<<res.first << endl ;
        cerr<<"freq : "<< (L+1) * mpwn_std[it] -mp_std[it] <<endl;
        
        // w = (L+1) * wn - freq
        

#endif
        if(s_my.find(it) == s_my.end())
            FN ++;
    }
#if APT
    cerr << "tot freq"<< std_freq << endl;
#endif
    double FPR = (double)FP/(FP+TN);
    double FNR = (double)FN/(TP+FN);
    double PR = (double)TP/(TP+FP);
    double RR = (double)TP/(TP+FN);
    double F1 = 2*PR*RR/(PR+RR);

    R->MEM = max_mem;
    R->ARE = ARE;
    R->PR  = PR;
    R->RR  = RR;
    R->F1  = F1;
    R->Npi = s_std.size();
    R->FPR = FPR;
    R->FNR = FNR;
    R->AAE = AAE;
    return;    
}

void PI_THP(Parameter para, Packet*P, Result*R){
    R->para = para;
    uint64_t input_max = para.input_max;
    uint64_t max_mem   = para.max_mem;
    int threshold      = para.threshold;
    int aveV           = para.aveV;
    int L              = para.L;
    int p              = para.p;

    double alpha = PI_alpha;
    int BF_L = max_mem * alpha / 3 * 8;
    BloomFilter *bf = new BloomFilter(3,BF_L);
    int SK_L = max_mem*(1-alpha)/p/(sizeof(int) + sizeof(int) + sizeof(Data) + sizeof(bool));
    PISketch    *sk = new PISketch(SK_L,p);

    ts_t T_interval = P[input_max-1].timestamp - P[0].timestamp;
    ts_t preTime = P[0].timestamp;
    double timeCycle = (double) T_interval / input_max * aveV;
    int currentCycle = 1;

    clock_t begt = clock();

    for(int i=0; i<input_max;++i){
        Packet packet = P[i];
        Data item = packet.dat;
        if(packet.timestamp - preTime > timeCycle){
            bf->clear();
            preTime = packet.timestamp;
            currentCycle ++;
            // printf("%lf\n",packet.timestamp);
        }
        // Insert into
        int w;
        if(bf->query(item))
            w = -1;
        else {
            bf->insert(item);
            w = L;
        }
        sk->insert(item,w);
 
    }

    clock_t endt = clock();
    double tot_time = (double)(endt-begt) / CLOCKS_PER_SEC;
    double THP = (double)input_max/(tot_time)/1000000;

    R->THP = THP;
}

void STD_Test(Parameter para, Packet*P, Result*R, set<Data> APT_S = emptyset, set<Data>*Noise=NULL){
    R->para = para;
    uint64_t input_max = para.input_max;
    uint64_t max_mem   = para.max_mem;
    int threshold      = para.threshold;
    int aveV           = para.aveV;
    int L              = para.L;
    int p              = para.p;

    ts_t T_interval = P[input_max-1].timestamp - P[0].timestamp;
    ts_t preTime = P[0].timestamp;
    double timeCycle = (double) T_interval / input_max * aveV;
    int currentCycle = 1;

    set<Data> s,s_all;
    map<Data,int> mp_std,mpwn_std,mpwn_my;
    for(int i=0; i<input_max;++i){
        Packet packet = P[i];
        Data item = packet.dat;
        if(packet.timestamp - preTime > timeCycle){
            s.clear();
            preTime = packet.timestamp;
            currentCycle ++;
            // printf("%lf\n",packet.timestamp);
        }
        // Insert into
        s_all.insert(item);
        if(s.find(item) != s.end())
            mp_std[item] -= 1;
        else{
            mp_std[item] += L;
            mpwn_std[item]++;
        }
        s.insert(item);  
    }
    set<Data> s_std,s_my;
#if APT
    s_std = APT_S;
    cerr << APT_S.size()<<endl;
#else
    for(auto it:mp_std){
        if(it.second > threshold)
            s_std.insert(it.first);
    }
#endif
    for(auto it:mp_std){
        if(it.second > threshold)
            s_my.insert(it.first);
    }

    double ARE = 0;

    ARE = 0;

    int TP=0,FP=0,TN=0,FN=0;
    for(auto it: s_my){
        if(s_std.find(it) == s_std.end()){
            FP ++;
            Noise->insert(it);
        }
        else
            TP ++;
    }
    for(auto it: s_std){
#if APT
#endif
        if(s_my.find(it) == s_my.end())
            FN ++;
    }

    double FPR = (double)FP/(FP+TN);
    double FNR = (double)FN/(TP+FN);
    double PR = (double)TP/(TP+FP);
    double RR = (double)TP/(TP+FN);
    double F1 = 2*PR*RR/(PR+RR);

    R->MEM = max_mem;
    R->ARE = 0;
    R->PR  = PR;
    R->RR  = RR;
    R->F1  = F1;
    R->Npi = s_std.size();
    R->FPR = FPR;
    R->FNR = FNR;
    R->AAE = 0;
    return;    
}

int STD_Filter(Parameter para, Packet*P, Result*R, set<Data> APT_S = emptyset,Packet*P_new=NULL){
    R->para = para;
    uint64_t input_max = para.input_max;
    uint64_t max_mem   = para.max_mem;
    int threshold      = para.threshold;
    int aveV           = para.aveV;
    int L              = para.L;
    int p              = para.p;

    ts_t T_interval = P[input_max-1].timestamp - P[0].timestamp;
    ts_t preTime = P[0].timestamp;
    double timeCycle = (double) T_interval / input_max * aveV;
    int currentCycle = 1;

    set<Data> s,s_all;
    map<Data,int> mp_std,mpwn_std,mpwn_my;
    for(int i=0; i<input_max;++i){
        Packet packet = P[i];
        Data item = packet.dat;
        if(packet.timestamp - preTime > timeCycle){
            s.clear();
            preTime = packet.timestamp;
            currentCycle ++;
            // printf("%lf\n",packet.timestamp);
        }
        // Insert into
        s_all.insert(item);
        if(s.find(item) != s.end())
            mp_std[item] -= 1;
        else{
            mp_std[item] += L;
            mpwn_std[item]++;
        }
        s.insert(item);  
    }
    int len = 0;
    for(int i=0; i<input_max;++i){
        Packet packet = P[i];
        Data item = packet.dat;
        int score = mp_std[item];
        if(score > threshold && APT_S.find(item) == APT_S.end())
            continue;
        P_new[len++] = packet;
    }
    return len;
}

void work(const char* filename,const char* output){
	Packet* P = new Packet[MAX_INPUT_SIZE];
    FILE *f = fopen(filename,"rb");
    set<Data>atkS = emptyset;
#if APT

    FILE *atkf = fopen(APTFILE, "rb");
    at_Packet* atkP = new at_Packet;
    while(ExtractFormattedPacket(atkf, atkP)){
        Data d = *(Data*)&(atkP->id);
        atkS.insert(d);
        // cerr << atkP->id << endl;
        // cerr << atkP->us << endl;
    }

    at_Packet* atP = new at_Packet;
    // for(int i=0; i< 1000000;++i) ExtractFormattedPacket(f,atP);
    int SET_SIZE = 0;
    for(int i=0; i< MAX_INPUT_SIZE && ExtractFormattedPacket(f,atP); ++i){
        P[i].dat = *(Data*)&(atP->id);
        P[i].timestamp = atP->us;
        // if(i%1000 == 0) cerr << atP->us <<" "<< i<< endl;
        SET_SIZE ++;
    }
    // for(auto it=atkS.begin();it != atkS.end();++it)
    //     cerr << (int)it->str[0] << endl;
#else
    char BUF[30];
    
    for(int i=0; i< MAX_INPUT_SIZE;++i){
        fread(BUF,1,DATA_LEN + sizeof(ts_t),f);
        P[i].dat = *(Data*)(BUF);
        P[i].timestamp = *(ts_t*)(BUF+DATA_LEN);
    }

#endif
    sort(P,P+min(SET_SIZE,MAX_INPUT_SIZE));
    cerr<<"tot Time" << P[MAX_INPUT_SIZE-1].timestamp - P[0].timestamp << endl;
    
    /*
    struct Parameter{
    uint64_t input_max;
    uint64_t max_mem;
    int threshold;
    int aveV;
    int L;
    int p;
    };
*//*
struct Parameter{
    uint64_t input_max;
    uint64_t max_mem;
    int threshold;
    int aveV;
    int L;
    int p;
};
*/
#if APT
    const int initL = 20;//50
    const int initThres = 2000;
    const int initAveV = 5000;
    int max_input = 5000000;
#else
    const int initL = 10;
    const int initThres = 3000;
    const int initAveV = 5000;
    const int max_input = 5000000;
#endif
freopen(output,"w",stdout);
    Result R;
    //P
    // PI_Test({5000000,2*1024*1024,80,50000,3,5},P,&R);
#if !APT
    for(uint64_t mem = 100*1024; mem <= 300*1024; mem += 100*1024){
        printf("MEM=%ld\n", mem);
        printf("p,ARE,PR,RR,F1,THP\n");
        for(int para_p = 1; para_p <= 10; ++ para_p){
            PI_Test({max_input,mem,initThres,initAveV,initL,para_p},P,&R,atkS);
            PI_THP ({max_input,mem,initThres,initAveV,initL,para_p},P,&R);
            R.Print_p();      
        }
    }
    cerr << "para_p finish" << endl;
    //N tot
    for(uint64_t mem = 100*1024; mem <= 300*1024; mem += 100*1024){
        printf("MEM=%ld\n", mem);
        printf("Nt,ARE,PR,RR,F1,THP\n");
        for(uint64_t Nt = 1*1000000; Nt <= 8*1000000;  Nt += 1000000){
            PI_Test({Nt,mem,initThres * Nt / 5000000 ,initAveV,initL,5},P,&R,atkS);
            PI_THP ({Nt,mem,initThres * Nt / 5000000 ,initAveV,initL,5},P,&R);
            R.Print_Nt();              
        }
    }
    cerr << "Ntot finish" << endl;
    // Npi
    for(uint64_t mem = 100*1024; mem <= 300*1024; mem += 100*1024){
        printf("MEM=%ld\n", mem);
        printf("Npi,ARE,PR,RR,F1,THP\n");
        for(int ths = 1000; ths <= 5000; ths += 1000){
            PI_Test({max_input,mem,initThres ,initAveV,initL,5},P,&R,atkS);
            PI_THP ({max_input,mem,initThres ,initAveV,initL,5},P,&R);
            R.Print_Npi();         
        }
    }
    cerr << "Npi finish" << endl;
#endif
    set<Data>Noise = emptyset;
#if APT


    Packet *P_new = new Packet[SET_SIZE];
    max_input = STD_Filter({SET_SIZE,50,initThres,initAveV,initL,5},P,&R,atkS,P_new);
    P = P_new;
    max_input = min(max_input,5000000);
    cerr <<"input:"<<max_input<<endl;
    printf("STD\nMEM,ARE,PR,RR,F1,THP,(FPR,FNR,AAE)\n");
    
    STD_Test({max_input,50,initThres,initAveV,initL,5},P,&R,atkS,&Noise);
    R.Print_APT();
    Noise = emptyset;
#endif
    //PIMEM,ARE,PR,RR,F1,THP,FPR,FNR,AAE
    printf("PI\nMEM,ARE,PR,RR,F1,THP,(FPR,FNR,AAE)\n");
    for(uint64_t mem = 50*1024; mem <= 300*1024; mem += 50*1024){
        PI_Test({max_input,mem,initThres,initAveV,initL,5},P,&R,atkS,Noise);
        PI_THP ({max_input,mem,initThres,initAveV,initL,5},P,&R);
#if APT
        R.Print_APT();
#else
        R.Print();
#endif
    }
    cerr << "PI finish" << endl;
    printf("OO\nMEM,ARE,PR,RR,F1,THP,(FPR,FNR,AAE)\n");
    for(uint64_t mem = 50*1024; mem <= 300*1024; mem += 50*1024){
        OnOff_Test({max_input,mem,initThres,initAveV,initL,5},P,&R,atkS,Noise);
        OnOff_THP ({max_input,mem,initThres,initAveV,initL,5},P,&R);
#if APT
        R.Print_APT();
#else
        R.Print();
#endif
    }
    cerr << "OO finish" << endl;
    printf("PIE\nMEM,ARE,PR,RR,F1,THP,(FPR,FNR,AAE)\n");
    for(uint64_t mem = 100*50*1024; mem <= 100*300*1024; mem += 100*50*1024){
        PIE_Test({max_input,mem,initThres,initAveV,initL,5},P,&R,atkS,Noise);
        PIE_THP ({max_input,mem,initThres,initAveV,initL,5},P,&R);
#if APT
        R.Print_APT();
#else
        R.Print();
#endif
    }
    cerr << "PIE finish" << endl;

    // cerr << "PI" << endl;

    // R.Print();
    // cerr << "OO" << endl;
    // OnOff_Test({5000000,2*1024*1024,80,50000,3,5},P,&R);
    // OnOff_THP({5000000,2*1024*1024,80,50000,3,5},P,&R);
    // R.Print();
    // cerr << "PIE" << endl;
    // PIE_Test({5000000,20*1024*1024,80,50000,3,5},P,&R);
    // PIE_THP({5000000,20*1024*1024,80,50000,3,5},P,&R);
    // R.Print();

}
void test(const char* filename,const char* output){
	Packet* P = new Packet[MAX_INPUT_SIZE];
    FILE *f = fopen(filename,"rb");
    char BUF[30];
    for(int i=0; i< MAX_INPUT_SIZE;++i){
        fread(BUF,1,DATA_LEN + sizeof(ts_t),f);
        P[i].dat = *(Data*)(BUF);
        P[i].timestamp = *(ts_t*)(BUF+DATA_LEN);
    }
    sort(P,P+MAX_INPUT_SIZE);
    cerr << P[MAX_INPUT_SIZE-1].timestamp - P[0].timestamp << endl;
    /*
    struct Parameter{
    uint64_t input_max;
    uint64_t max_mem;
    int threshold;
    int aveV;
    int L;
    int p;
    };
    */
    // freopen(output,"w",stdout);
    Result R;
    printf("PI\nMEM,ARE,PR,RR,F1,THP\n");
    for(uint64_t mem = 100*1024; mem <= 600*1024; mem += 200*1024){
        // (L+1)*V = 200000
        for(int L = 5; L <= 15; L+=5){
            for(int V = 2500;V <= 10000; V += 2500){
                for(int thres = 1000; thres <= 5000; thres += 1000){
                    PI_Test({5000000,mem,thres,V,L,5},P,&R);
                    PI_THP ({5000000,mem,thres,V,L,5},P,&R);
                    R.Print_All();
                }
            }

        } 

    }
    // OnOff_Test({500,3*1024*1024,10 ,50000,3,5},P,&R);
    R.Print();
}
int main(int argc,char **argv){
    work(FILENAME,OUTPUT);
    // test(FILENAME,OUTPUT);
}

