```c++
/* parameter:
is_resubmit: 0 represents the first turn
			1 represents the second turn
bloom_result: bloom filter result，3 means all hit，miss if less than 3
is_match: 1 represent there is a bucket id matching with the flow id
op_id：the bucket id operated, can be 1/2/3

In wf buckets, if wf == 0, the decrease_action will keep wf at 0, which means this bucket is an invalid bucket and can be replaced
*/

if(is_submit == 0) {	//the first turn
    bloom_filter_1;
    bloom_filter_2;
    bloom_filter_3;
    
    id_1 = read_id_bucket_1;
    id_2 = read_id_bucket_2;
    id_3 = read_id_bucket_3;
    if(id_1 == flowid) {
        op_id = 1;
    }
    /* id_2 ,id_3 are in a similar way */
    //...
    
    wf_1 = read_wf_bucket_1;
    wf_2 = read_wf_bucket_2;
    wf_3 = read_wf_bucket_3;
}
else {	//the second turn
    if(is_match) {	
        if(wf_i == 0) {	//can be replaced
            replace_id_bucket_i;
            replace_wf_bucket_i;	//wf = L
        }
        else {	//match 
            if(bloom_result == 3) {	//all hit
                decrease_wf_bucket_i;	//wf -=1
            }
            else {
                increase_wf_bucket_i;	//wf += L
            }
        }
    }
    else {	//mismatch id
        //find the smallest wf bucket's id
        op_id = find_min();
        
        //operate the bucket with the smallest wf
        if(wf_i == 0) {		//invalid
            replace_id/wf_bucket_i;
        }
        else {
            decrease_wf_bucket_i;
        }
    }
}
```

