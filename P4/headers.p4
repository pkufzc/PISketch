#ifndef _HEADERS_
#define _HEADERS_

header ethernet_h {
    bit<48> dst_addr;
    bit<48> src_addr;
    bit<16> ether_type;
}

header ipv4_h {
    bit<4> version;
    bit<4> ihl;
    bit<8> diffserv;
    bit<16> total_len;
    bit<16> identification;
    bit<3> flags;
    bit<13> frag_offset;
    bit<8> ttl;
    bit<8> protocol;
    bit<16> hdr_checksum;
    bit<32> src_addr;
    bit<32> dst_addr;
}

header udp_h {
	bit<16> src_port;
	bit<16> dst_port;
	bit<16> total_len;
	bit<16> checksum;
}

header my_flow_h {
	bit<32> id;
#ifdef __TEST__
	bit<32> timestamp;
#endif
}

header my_record_h {
    bit<32> bucket_index;
    bit<32> wf_1;
    bit<32> wf_2;
    bit<32> wf_3;
    bit<8> bloom_result;
    bit<1> is_match;
    bit<7> zero_1;
    bit<2> op_id;
    bit<6> zero_2;
    bit<8> resubmit_flag;
}

struct ingress_header_t {
	ethernet_h ethernet;
	ipv4_h ipv4;
	udp_h udp;
	my_flow_h myflow;
	my_record_h myrecord;
}

struct ingress_metadata_t {
    bit<32> bloom_index_1;
    bit<32> bloom_index_2;
    bit<32> bloom_index_3;
	bit<32> dif_turn_1;
	bit<32> dif_turn_2;
    bit<32> id_1;
    bit<32> id_2;
    bit<32> id_3;

}

struct egress_metadata_t {}
struct egress_header_t {}
#endif
