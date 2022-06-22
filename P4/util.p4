#ifndef _UTIL_
#define _UTIL_

parser IngressParser(
        packet_in pkt,
        out ingress_header_t hdr,
        out ingress_metadata_t meta,
        out ingress_intrinsic_metadata_t ig_intr_md)
{
	state start {
		pkt.extract(ig_intr_md);
        meta.id_1 = 0;
		meta.id_2 = 0;
		meta.id_3 = 0;
		meta.dif_turn_1 = 0;
		meta.dif_turn_2 = 0;
        meta.bloom_index_1 = 0;
        meta.bloom_index_2 = 0;
        meta.bloom_index_3 = 0;
		pkt.advance(PORT_METADATA_SIZE);
		transition parse_ethernet;
	}

	state parse_ethernet {
		pkt.extract(hdr.ethernet);
		transition select(hdr.ethernet.ether_type) {
			0x0800: parse_ipv4;
			default: reject;
		}		
	}

	state parse_ipv4 {
		pkt.extract(hdr.ipv4);
		transition select(hdr.ipv4.protocol) {
			17: parse_udp;
			default: accept;
		}
	}

	state parse_udp {
		pkt.extract(hdr.udp);
		transition parse_myflow;
	}

	state parse_myflow{
		pkt.extract(hdr.myflow);
		transition select(ig_intr_md.resubmit_flag) {
			0: parse_origin;
			1: parse_resubmit;
		}
	}
	
	state parse_origin {
		hdr.myrecord.setValid();
		hdr.myrecord.bucket_index = 0;
		hdr.myrecord.wf_1 = 0;
		hdr.myrecord.wf_2 = 0;
		hdr.myrecord.wf_3 = 0;
        hdr.myrecord.bloom_result = 0;
		hdr.myrecord.is_match = 0;
        hdr.myrecord.resubmit_flag = 0;
		hdr.myrecord.zero_1 = 0;
		hdr.myrecord.op_id = 0;
		hdr.myrecord.zero_2 = 0;
		transition accept;
	}

	state parse_resubmit {
		pkt.extract(hdr.myrecord);
		transition accept;
	}
}



#endif
