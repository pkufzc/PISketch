#ifndef _ATT_PCAP_PARSER_
#define _ATT_PCAP_PARSER_

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string>
#include <vector>
#include <cstring>
#include <algorithm>
#include <set>
//#include <fstream>

#define PcapHeaderSize 24
#define MaxDataSize 100000

struct at_Packet
{
	uint64_t us;
	uint64_t id;
};

uint32_t ReverseUint32(uint8_t *str)
{
	uint32_t num = 0;
	num |= str[0];
	num |= str[1] << 8;
	num |= str[2] << 16;
	num |= str[3] << 24;
	return num;
}
uint32_t UnReverseUint32(uint8_t *str)
{
	uint32_t num = 0;
	num |= str[3];
	num |= str[2] << 8;
	num |= str[1] << 16;
	num |= str[0] << 24;
	return num;
}
uint16_t UnReverseUint16(uint8_t *str)
{
	uint16_t num = 0;
	num |= str[0];
	num |= str[1] << 8;
	return num;
}


bool ReadPcapFileHeader(FILE *fin)
{
	uint8_t PcapFileHeader[PcapHeaderSize];
	if (fread((void*)PcapFileHeader, sizeof(uint8_t), PcapHeaderSize, fin) != PcapHeaderSize)
		return false;
	return true;
}

bool ExtractPcapPacket(FILE *fin, at_Packet *packet)
{
	while (true)
	{
		uint8_t str[4];
		uint32_t num[4];

		for(int i = 0; i < 4; ++i)
		{
			if(fread((void *)str, sizeof(uint8_t), 4, fin) != 4)
				return false;
			num[i] = ReverseUint32(str);
		}

		packet->us = num[0] * 1000000 + num[1];
		uint32_t caplen = num[2];
		uint8_t data[MaxDataSize];
			
		
		if(fread((void*)data, sizeof(uint8_t), caplen, fin) != caplen) {
			printf(">>> error on reading data\n");
			return 0;
		}
			
		
		if(!((data[14]>>4) == 4 && caplen >= 24))	
			continue;
		
		uint8_t Protocol_Type = data[23];
		if(Protocol_Type != 6 && Protocol_Type != 17)
			continue;

		packet->id = ((uint64_t)ReverseUint32(data + 26) << 32) | ReverseUint32(data + 30);
		return true;
	}
}

bool ExtractFormattedPacket(FILE *fin, at_Packet *packet)
{
	uint8_t str[4];
	uint32_t num[4];
	for(int i = 0; i < 4; ++i)
	{
		if(fread((void *)str, sizeof(uint8_t), 4, fin) != 4)
			return false;
		num[i] = ReverseUint32(str);
	}
	
	packet->us = (uint64_t)num[0] * 1000000 + (uint64_t)num[1];
	packet->id = ((uint64_t)num[2] << 32) | (uint64_t)num[3];
	// cerr << packet->id << endl;
	return true;
}

void WriteFormattedPacket(FILE *fout, at_Packet *packet)
{
	uint8_t str[4];
	uint32_t num[4];
	num[0] = packet->us / 1000000;
	num[1] = packet->us % 1000000;
	num[2] = packet->id >> 32;
	num[3] = packet->id & 0xffffffff;
	for (int i = 0; i < 4; ++i)
	{
		str[0] = num[i] & 0xff;
		str[1] = (num[i] >> 8) & 0xff;
		str[2] = (num[i] >> 16) & 0xff;
		str[3] = (num[i] >> 24) & 0xff;
		fwrite((void *)str, sizeof(uint8_t), 4, fout);
	}
}

#endif
