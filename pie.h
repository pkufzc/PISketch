#ifndef PIE_H
#define PIE_H

#include <string.h>
#include <algorithm>
#include "data.h"
#include "abstract.h"
#include "definition.h"

#define RAPTOR_SIZE 1
#define PRINT_SIZE 14
#define MASK_PRINT 0x3fff

class PIE : public Abstract{
public:
    PIE(int num, int _HIT, uint _CYCLE):CYCLE(_CYCLE){
        HIT = _HIT;
        //LENGTH = (15400000 + 600000 * num) / 3200;
        LENGTH = num / _CYCLE / 2;
        counter = new Counter[LENGTH * CYCLE];
        memset(counter, 0, sizeof(Counter) * LENGTH * CYCLE);
        // printf("len:%d cy:%d\n",LENGTH,CYCLE);
        aae = are = pr = cr = 0;
        name = "PIE";
    }
    ~PIE(){
        delete []counter;
    }
    void Init(const Data& data, uint time){
        
        Counter temp = Encode(data, time);
        uint position = data.Hash() % LENGTH;
        position += (time - 1) * LENGTH;
        if(counter[position].empty()){
            counter[position] = temp;
        }
        else if(!(counter[position] == temp)){
            counter[position].set_collision();
        }
    }

    int Query(const Data& data){
        int ret = 0;
        uint position = data.Hash() % LENGTH;
        // printf("%u\n",position);
        for(uint time = 0;time < CYCLE;++time){
            uint pos = position + time * LENGTH;
            // if(position == 1658) printf("%d %u\n",counter[pos].print,data.Hash(1)& MASK_PRINT);
            if(counter[pos].flag && counter[pos].print == (data.Hash(1) & MASK_PRINT))
                ret += 1;
        }
        // if(ret > 90) printf("?p:%u\n",position);
        return ret;
    }

    // void Check(HashMap mp){

    // }
    int getMEM(){
        return sizeof(Counter) * LENGTH * CYCLE;
    }

private:
    struct Counter{
        short flag : 1;
        short raptor : RAPTOR_SIZE;
        short print : PRINT_SIZE;
        bool empty(){
            return (flag == 0 && raptor == 0 && print == 0);
        }
        void set_collision(){
            flag = 1;
            raptor = -1;
            print = -1;
        }
        bool operator == (Counter count){
            return (raptor == count.raptor && print == count.print);
        }
    };

    uint LENGTH;
    const uint CYCLE;

    Counter* counter;

    Counter Encode(const Data& data, uint time){
        Counter temp;
        temp.flag = 1;
        temp.print = (data.Hash(1) & MASK_PRINT);
        srand(time);
        int len = DATA_LEN * 8;
        bool coeff[len];
        bool id[len];

        for(int i = 0;i < len;++i)
            coeff[i] = (rand() & 1);
        for(int i = 0;i < DATA_LEN;++i){
            for(int j = 0;j < 8;++j)
                id[i * 8 + j] = (data.str[i] & (7 - j));
        }
        temp.raptor = 0;
        for(int i = 0;i < len;++i){
                temp.raptor ^= (coeff[i] & id[i]);
        }
        return temp;
    }
};

#endif // PIE_H
