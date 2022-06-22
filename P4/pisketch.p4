#include<core.p4>
#if __TARGET_TOFINO__ == 2
#include<t2na.p4>
#else
#include<tna.p4>
#endif

#include "headers.p4"
#include "util.p4"

#define L 10
#define FILTER_LEFT_BORDER 16
#define BUCKET_LEFT_BORDER 15
const bit<32> FILTER_SIZE = 1<<17;
const bit<32> BUCKET_SIZE = 1<<16;
typedef bit<8> filter_length_t;
typedef bit<32> bucket_length_t;
typedef bit<32> filter_size_t;
typedef bit<32> bucket_size_t;
typedef bit<1> bool_size_t;

/****************** I N G R E S S**************************/
control Ingress(inout ingress_header_t hdr,
		inout ingress_metadata_t meta,
		in ingress_intrinsic_metadata_t ig_intr_md,
		in ingress_intrinsic_metadata_from_parser_t ig_prsr_md,
		inout ingress_intrinsic_metadata_for_deparser_t ig_dprsr_md,
		inout ingress_intrinsic_metadata_for_tm_t ig_tm_md)
{
    Hash<filter_size_t>(HashAlgorithm_t.RANDOM) filter_hash_2;
    Hash<filter_size_t>(HashAlgorithm_t.CRC32) filter_hash_3;

/****************** STAGE 0 **************************/
/****************** PREPROCESSING **************************/
    action preprocessing() {
        hdr.myrecord.bucket_index = hdr.myflow.id;
        meta.bloom_index_1 = hdr.myflow.id;
	}

    @stage(0)
	table preprocessing_table {
		actions = {
			preprocessing;
		}
		size = 1;
		const default_action = preprocessing;
	}

/****************** STAGE 1 **************************/
/****************** BLOOM FILTER 1 **************************/
    Register<filter_length_t, filter_size_t>(FILTER_SIZE) bloom_filter_1;
    RegisterAction<filter_length_t, filter_size_t, filter_length_t>(bloom_filter_1) bloom_filter_salu_1 = {
        void apply(inout filter_length_t reg_data, out filter_length_t out_data) {
            out_data = reg_data;
            reg_data = 1;
        }
    };

    action visit_bloom_1() {
        meta.bloom_index_2 = filter_hash_2.get(hdr.myflow.id);
        hdr.myrecord.bloom_result = hdr.myrecord.bloom_result + bloom_filter_salu_1.execute((filter_size_t)meta.bloom_index_1[FILTER_LEFT_BORDER:0]);
    }

    @stage(1)
    table bloom_filter_table_1 {
        actions = {
            visit_bloom_1;
        }
        size = 1;
        const default_action = visit_bloom_1;
    }
/****************** STAGE 2 **************************/
/****************** BLOOM FILTER 2 **************************/
    Register<filter_length_t, filter_size_t>(FILTER_SIZE) bloom_filter_2;
    RegisterAction<filter_length_t, filter_size_t, filter_length_t>(bloom_filter_2) bloom_filter_salu_2 = {
        void apply(inout filter_length_t reg_data, out filter_length_t out_data) {
            out_data = reg_data;
            reg_data = 1;
        }
    };

    action visit_bloom_2() {
        meta.bloom_index_3 = filter_hash_3.get(hdr.myflow.id);
        hdr.myrecord.bloom_result = hdr.myrecord.bloom_result + bloom_filter_salu_2.execute((filter_size_t)meta.bloom_index_2[FILTER_LEFT_BORDER:0]);
    }

    @stage(2)
    table bloom_filter_table_2 {
        actions = {
            visit_bloom_2;
        }
        size = 1;
        const default_action = visit_bloom_2;
    }

/****************** STAGE 3 **************************/
/****************** BLOOM FILTER 3 **************************/
    Register<filter_length_t, filter_size_t>(FILTER_SIZE) bloom_filter_3;
    RegisterAction<filter_length_t, filter_size_t, filter_length_t>(bloom_filter_3) bloom_filter_salu_3 = {
        void apply(inout filter_length_t reg_data, out filter_length_t out_data) {
            out_data = reg_data;
            reg_data = 1;
        }
    };

    action visit_bloom_3() {
        hdr.myrecord.bloom_result = hdr.myrecord.bloom_result + bloom_filter_salu_3.execute((filter_size_t)meta.bloom_index_3[FILTER_LEFT_BORDER:0]);
    }

    @stage(3)
    table bloom_filter_table_3 {
        actions = {
            visit_bloom_3;
        }
        size = 1;
        const default_action = visit_bloom_3;
    }

/****************** STAGE 5 **************************/
/****************** ID BUCKET 1 **************************/
    Register<bucket_length_t, bucket_size_t>(BUCKET_SIZE) id_bucket_1;
    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(id_bucket_1) read_id_bucket_salu_1 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = reg_data;
        }
    };

    action read_id_bucket_1() {
        meta.id_1 = read_id_bucket_salu_1.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(5)
    table read_id_bucket_table_1 {
        actions = {
            read_id_bucket_1;
        }
        size = 1;
        const default_action = read_id_bucket_1;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(id_bucket_1) replace_id_bucket_salu_1 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = hdr.myflow.id;
        }
    };

    action replace_id_bucket_1() {
        replace_id_bucket_salu_1.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(5)
    table replace_id_bucket_table_1 {
        actions = {
            replace_id_bucket_1;
        }
        size = 1;
        const default_action = replace_id_bucket_1;
    }

/****************** STAGE 6 **************************/
/****************** ID BUCKET 2 **************************/
    Register<bucket_length_t, bucket_size_t>(BUCKET_SIZE) id_bucket_2;
    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(id_bucket_2) read_id_bucket_salu_2 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = reg_data;
        }
    };

    action read_id_bucket_2() {
        meta.id_2 = read_id_bucket_salu_2.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(6)
    table read_id_bucket_table_2 {
        actions = {
            read_id_bucket_2;
        }
        size = 1;
        const default_action = read_id_bucket_2;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(id_bucket_2) replace_id_bucket_salu_2 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = hdr.myflow.id;
        }
    };

    action replace_id_bucket_2() {
        replace_id_bucket_salu_2.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(6)
    table replace_id_bucket_table_2 {
        actions = {
            replace_id_bucket_2;
        }
        size = 1;
        const default_action = replace_id_bucket_2;
    }

/****************** STAGE 7 **************************/
/****************** ID BUCKET 3 **************************/
    Register<bucket_length_t, bucket_size_t>(BUCKET_SIZE) id_bucket_3;
    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(id_bucket_3) read_id_bucket_salu_3 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = reg_data;
        }
    };

    action read_id_bucket_3() {
        meta.id_3 = read_id_bucket_salu_3.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(7)
    table read_id_bucket_table_3 {
        actions = {
            read_id_bucket_3;
        }
        size = 1;
        const default_action = read_id_bucket_3;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(id_bucket_3) replace_id_bucket_salu_3 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = hdr.myflow.id;
        }
    };

    action replace_id_bucket_3() {
        replace_id_bucket_salu_3.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(7)
    table replace_id_bucket_table_3 {
        actions = {
            replace_id_bucket_3;
        }
        size = 1;
        const default_action = replace_id_bucket_3;
    }

/****************** STAGE 8 **************************/
/****************** WF BUCKET 1 **************************/
    Register<bucket_length_t, bucket_size_t>(BUCKET_SIZE) wf_bucket_1;
    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_1) read_wf_bucket_salu_1 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = reg_data;
        }
    };

    action read_wf_bucket_1() {
        hdr.myrecord.wf_1 = read_wf_bucket_salu_1.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(8)
    table read_wf_bucket_table_1 {
        actions = {
            read_wf_bucket_1;
        }
        size = 1;
        const default_action = read_wf_bucket_1;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_1) decrease_wf_bucket_salu_1 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            if(reg_data == 0) {
                reg_data = reg_data;
            }
            else {
                reg_data = reg_data - 1;
            }
        }
    };

    action decrease_wf_bucket_1() {
        decrease_wf_bucket_salu_1.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(8)
    table decrease_wf_bucket_table_1 {
        actions = {
            decrease_wf_bucket_1;
        }
        size = 1;
        const default_action = decrease_wf_bucket_1;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_1) increase_wf_bucket_salu_1 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = reg_data + L;
        }
    };

    action increase_wf_bucket_1() {
        increase_wf_bucket_salu_1.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(8)
    table increase_wf_bucket_table_1 {
        actions = {
            increase_wf_bucket_1;
        }
        size = 1;
        const default_action = increase_wf_bucket_1;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_1) replace_wf_bucket_salu_1 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = L;
        }
    };

    action replace_wf_bucket_1() {
        replace_wf_bucket_salu_1.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(10)
    table replace_wf_bucket_table_1 {
        actions = {
            replace_wf_bucket_1;
        }
        size = 1;
        const default_action = replace_wf_bucket_1;
    }

/****************** STAGE 9 **************************/
/****************** WF BUCKET 2 **************************/
    Register<bucket_length_t, bucket_size_t>(BUCKET_SIZE) wf_bucket_2;
    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_2) read_wf_bucket_salu_2 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = reg_data;
        }
    };

    action read_wf_bucket_2() {
        hdr.myrecord.wf_2 = read_wf_bucket_salu_2.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(9)
    table read_wf_bucket_table_2 {
        actions = {
            read_wf_bucket_2;
        }
        size = 1;
        const default_action = read_wf_bucket_2;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_2) decrease_wf_bucket_salu_2 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            if(reg_data == 0) {
                reg_data = reg_data;
            }
            else {
                reg_data = reg_data - 1;
            }
        }
    };

    action decrease_wf_bucket_2() {
        decrease_wf_bucket_salu_2.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(9)
    table decrease_wf_bucket_table_2 {
        actions = {
            decrease_wf_bucket_2;
        }
        size = 1;
        const default_action = decrease_wf_bucket_2;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_2) increase_wf_bucket_salu_2 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = reg_data + L;
        }
    };

    action increase_wf_bucket_2() {
        increase_wf_bucket_salu_2.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(9)
    table increase_wf_bucket_table_2 {
        actions = {
            increase_wf_bucket_2;
        }
        size = 1;
        const default_action = increase_wf_bucket_2;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_2) replace_wf_bucket_salu_2 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = L;
        }
    };

    action replace_wf_bucket_2() {
        replace_wf_bucket_salu_2.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(10)
    table replace_wf_bucket_table_2 {
        actions = {
            replace_wf_bucket_2;
        }
        size = 1;
        const default_action = replace_wf_bucket_2;
    }

/****************** STAGE 10 **************************/
/****************** WF BUCKET 3 **************************/
    Register<bucket_length_t, bucket_size_t>(BUCKET_SIZE) wf_bucket_3;
    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_3) read_wf_bucket_salu_3 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = reg_data;
        }
    };

    action read_wf_bucket_3() {
        hdr.myrecord.wf_3 = read_wf_bucket_salu_3.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(10)
    table read_wf_bucket_table_3 {
        actions = {
            read_wf_bucket_3;
        }
        size = 1;
        const default_action = read_wf_bucket_3;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_3) decrease_wf_bucket_salu_3 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            if(reg_data == 0) {
                reg_data = reg_data;
            }
            else {
                reg_data = reg_data - 1;
            }
        }
    };

    action decrease_wf_bucket_3() {
        decrease_wf_bucket_salu_3.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(10)
    table decrease_wf_bucket_table_3 {
        actions = {
            decrease_wf_bucket_3;
        }
        size = 1;
        const default_action = decrease_wf_bucket_3;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_3) increase_wf_bucket_salu_3 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = reg_data + L;
        }
    };

    action increase_wf_bucket_3() {
        increase_wf_bucket_salu_3.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(10)
    table increase_wf_bucket_table_3 {
        actions = {
            increase_wf_bucket_3;
        }
        size = 1;
        const default_action = increase_wf_bucket_3;
    }

    RegisterAction<bucket_length_t, bucket_size_t, bucket_length_t>(wf_bucket_3) replace_wf_bucket_salu_3 = {
        void apply(inout bucket_length_t reg_data, out bucket_length_t out_data) {
            out_data = reg_data;
            reg_data = L;
        }
    };

    action replace_wf_bucket_3() {
        replace_wf_bucket_salu_3.execute((bucket_size_t)hdr.myrecord.bucket_index[BUCKET_LEFT_BORDER:0]);
    }

    @stage(10)
    table replace_wf_bucket_table_3 {
        actions = {
            replace_wf_bucket_3;
        }
        size = 1;
        const default_action = replace_wf_bucket_3;
    }
/*************** FIND MIN ************************/
	Register<bucket_length_t, bool_size_t>(1) judge_reg_1;
	RegisterAction<bucket_length_t, bool_size_t, bucket_length_t>(judge_reg_1) judge_reg_salu_1 = {
		void apply(inout bucket_length_t register_data, out bucket_length_t alu_data) {
			if(meta.dif_turn_1[31:31] == 1)	{
				alu_data = 1;	
			}
			else {
				alu_data = 0;
			}
		}
	};
	Register<bucket_length_t, bool_size_t>(1) judge_reg_2;
	RegisterAction<bucket_length_t, bool_size_t, bucket_length_t>(judge_reg_2) judge_reg_salu_2 = {
		void apply(inout bucket_length_t register_data, out bucket_length_t alu_data) {
			if(meta.dif_turn_2[31:31] == 1)	{
				alu_data = 1;	
			}
			else {
				alu_data = 0;
			}
		}
	};

	action judge_dif_turn_reg_1() {
		meta.dif_turn_1 = judge_reg_salu_1.execute(0);
	}
    
	table judge_dif_turn_reg_table_1 {
		actions = {
			judge_dif_turn_reg_1;
		}
		size = 1;
		const default_action = judge_dif_turn_reg_1;
	}

	action judge_dif_turn_reg_2() {
		meta.dif_turn_2 = judge_reg_salu_2.execute(0);
	}

	table judge_dif_turn_reg_table_2 {
		actions = {
			judge_dif_turn_reg_2;
		}
		size = 1;
		const default_action = judge_dif_turn_reg_2;
	}

	table judge_dif_turn_reg_table_3 {
		actions = {
			judge_dif_turn_reg_2;
		}
		size = 1;
		const default_action = judge_dif_turn_reg_2;
	}

/*************** logic ********************/
    apply {
        if(ig_intr_md.resubmit_flag == 0) {
            preprocessing_table.apply();
            bloom_filter_table_1.apply();
            bloom_filter_table_2.apply();
            bloom_filter_table_3.apply();

            read_id_bucket_table_1.apply();
            if(meta.id_1 == hdr.myflow.id) {
                hdr.myrecord.is_match = 1;
                hdr.myrecord.op_id = 1;
            }
            read_id_bucket_table_2.apply();
            if(meta.id_2 == hdr.myflow.id) {
                hdr.myrecord.is_match = 1;
                hdr.myrecord.op_id = 2;
            }
            read_id_bucket_table_3.apply();
            if(meta.id_3 == hdr.myflow.id) {
                hdr.myrecord.is_match = 1;
                hdr.myrecord.op_id = 3;
            }
            read_wf_bucket_table_1.apply();
            read_wf_bucket_table_2.apply();
            read_wf_bucket_table_3.apply();
            //resubmit
        }
        else {  //resubmit packet
            hdr.myrecord.resubmit_flag = 1;
            if(hdr.myrecord.is_match == 0) {    //find min decrease/replace
                if(hdr.myrecord.op_id == 1) {
                    if(hdr.myrecord.wf_1 == 0) {    //replace
                        replace_id_bucket_table_1.apply();
                        replace_wf_bucket_table_1.apply();
                    } 
                    else {
                        if(hdr.myrecord.bloom_result == 3) {
                            decrease_wf_bucket_table_1.apply();
                        }
                        else {
                            increase_wf_bucket_table_1.apply();
                        }
                    }               
                }
                else if(hdr.myrecord.op_id == 2) {
                    if(hdr.myrecord.wf_2 == 0) {    //replace
                        replace_id_bucket_table_2.apply();
                        replace_wf_bucket_table_2.apply();
                    } 
                    else {
                        if(hdr.myrecord.bloom_result == 3) {
                            decrease_wf_bucket_table_2.apply();
                        }
                        else {
                            increase_wf_bucket_table_2.apply();
                        }
                    }               

                }
                else if(hdr.myrecord.op_id == 3) {
                    if(hdr.myrecord.wf_3 == 0) {    //replace
                        replace_id_bucket_table_3.apply();
                        replace_wf_bucket_table_3.apply();
                    } 
                    else {
                        if(hdr.myrecord.bloom_result == 3) {
                            decrease_wf_bucket_table_3.apply();
                        }
                        else {
                            increase_wf_bucket_table_3.apply();
                        }
                    }               
                }               
            }
            else {
                //find min 
                meta.dif_turn_1 = hdr.myrecord.wf_1 - hdr.myrecord.wf_2;
                judge_dif_turn_reg_table_1.apply();
                if(meta.dif_turn_1 == 0) {
                    meta.dif_turn_2 = hdr.myrecord.wf_2 - hdr.myrecord.wf_3;
                    judge_dif_turn_reg_table_2.apply();
                    if(meta.dif_turn_2 == 0) {
                        hdr.myrecord.op_id = 3;
                    }
                    else {
                        hdr.myrecord.op_id = 2;
                    }
                }
                else {
                     meta.dif_turn_2 = hdr.myrecord.wf_1 - hdr.myrecord.wf_3;
                    judge_dif_turn_reg_table_3.apply();
                    if(meta.dif_turn_2 == 0) {
                        hdr.myrecord.op_id = 3;
                    }
                    else {
                        hdr.myrecord.op_id = 1;
                    }

                }
                //end find logic

                if(hdr.myrecord.op_id == 1) {
                    if(hdr.myrecord.wf_1 == 0) {
                        replace_id_bucket_table_1.apply();
                        replace_wf_bucket_table_1.apply();
                    }
                    else {
                        decrease_wf_bucket_table_1.apply();
                    }
                }
                else if(hdr.myrecord.op_id == 2) {
                     if(hdr.myrecord.wf_2 == 0) {
                        replace_id_bucket_table_2.apply();
                        replace_wf_bucket_table_2.apply();
                    }
                    else {
                        decrease_wf_bucket_table_2.apply();
                    }
               
                }
                else if(hdr.myrecord.op_id == 3) {
                    if(hdr.myrecord.wf_3 == 0) {
                        replace_id_bucket_table_3.apply();
                        replace_wf_bucket_table_3.apply();
                    }
                    else {
                        decrease_wf_bucket_table_3.apply();
                    }

                }
            }
        }
    }

}

/******************* INGRESS DEPARSER ********************/
control IngressDeparser(packet_out pkt,
	inout ingress_header_t hdr,
	in ingress_metadata_t meta,
	in ingress_intrinsic_metadata_for_deparser_t ig_dprtr_md)
{
	Resubmit() resubmit;

	apply{
		if(hdr.myrecord.resubmit_flag == 0) {
			resubmit.emit();
		}
		pkt.emit(hdr);
	}
}


/*****************  EGRESS ********************/
parser EgressParser(packet_in pkt,
	out egress_header_t hdr,
	out egress_metadata_t meta,
	out egress_intrinsic_metadata_t eg_intr_md)
{
	state start{
		pkt.extract(eg_intr_md);
		transition accept;
	}
}

control Egress(inout egress_header_t hdr,
	inout egress_metadata_t meta,
	in egress_intrinsic_metadata_t eg_intr_md,
	in egress_intrinsic_metadata_from_parser_t eg_prsr_md,
	inout egress_intrinsic_metadata_for_deparser_t eg_dprsr_md,
	inout egress_intrinsic_metadata_for_output_port_t eg_oport_md)
{
	apply{}
}

control EgressDeparser(packet_out pkt,
	inout egress_header_t hdr,
	in egress_metadata_t meta,
	in egress_intrinsic_metadata_for_deparser_t eg_dprsr_md)
{
	apply{
		pkt.emit(hdr);
	}
}


/* main */
Pipeline(IngressParser(),Ingress(),IngressDeparser(),
EgressParser(),Egress(),EgressDeparser()) pipe;

Switch(pipe) main;

