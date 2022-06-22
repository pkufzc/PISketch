#include <iostream>
#include <random>
#include <set>
#include <stdlib.h>
#include <time.h>
#include <typeinfo>
#include <memory.h>
#include "parser.h"
#define MAXNORMALNUM 20000000
#define LSTRING 100
#define INSERTNUM 1
#define US(attackPacket) ((uint64_t)((double)(attackPacket->us - attackStartUs) *0.04  + offset))
#define ID(attackPacket) (attackPacket->id + i)
using namespace std;

const char comment[LSTRING] = "atk_2to4";

int main(int argc, char *argv[])
{

	if (argc != 3)
	{
		printf("Wrong Input!\n");
		return 0;
	}

	int variantNum = atoi(argv[1]);
	uint64_t maxOffset = (uint64_t)atoi(argv[2]);
	int cnt = 0;
	srand((unsigned)time(NULL));

	
	char medFlowDir[LSTRING] = "mix/intermediate.dat";
	// FILE *fmed = fopen(medFlowDir, "wb");
	// fclose(fmed);

	
	char attackFlowDir[INSERTNUM][LSTRING] = {
		"attack/9002.pcap"
		// "attack/PlugX.pcap"
	};	

	
	char mixFlowDir[LSTRING] = "mix/mix.dat";
	char atklFlowDir[LSTRING] = "mix/attacklist.dat";
	FILE *fatklist = fopen(atklFlowDir, "wb");
	Packet *normalPacket = new Packet;
	Packet *attackPacket = new Packet;
	printf("%s\n", mixFlowDir);

	
	printf("Copying normal flows...\n");
	
	set<uint64_t> attackList;
	uint64_t datalen = (uint64_t)(0);
	uint64_t Packetnum = 0;
	uint64_t currentUs;
	int attackSeq = 0;
	for (int k = 0; k < INSERTNUM; ++k)	
	{
		for (int i = 0; i < variantNum; ++i) // variantNum
		{
			Packetnum = 0;
			printf("\033[1A\033[KInserting attack flow %d for %d-th time...\n", k, i);
			//double variation = LT / PERIOD + (RT - LT) / PERIOD * ((double)rand() / (double)RAND_MAX);
			//double variation = 1.0 + maxVariation * 2.0 * ((double)rand() / (double)RAND_MAX - 0.5);
			uint64_t offset = (uint64_t)((double)maxOffset * (double)rand() / (double)RAND_MAX);
			FILE *fatk = fopen(attackFlowDir[k], "rb");
			FILE *fmed = fopen(medFlowDir, "rb");
			FILE *fmix = fopen(mixFlowDir, "wb");
			

			
			ReadPcapFileHeader(fatk);
			ExtractPcapPacket(fatk, attackPacket);
			uint64_t attackStartUs = attackPacket->us;
			uint64_t normalStartUs = 0;
			bool normal_init = 0;
			uint64_t Normalnum = 0;
			while (ExtractFormattedPacket(fmed, normalPacket) && Normalnum < MAXNORMALNUM)
			{	
				if(normal_init == 0) normalStartUs = normalPacket->us;
				normal_init = 1;
				normalPacket->us -= normalStartUs;
				while (true)
				{
					
					if (US(attackPacket) >= normalPacket->us)
						break;
					
					
					// cout << US(attackPacket) <<" "<<ID(attackPacket)<<endl; 
					// cout << normalStartUs << endl;
					// while(1);
					attackPacket->us = US(attackPacket);
					attackPacket->id = ID(attackPacket);
					
					WriteFormattedPacket(fmix, attackPacket);
					++Packetnum;
					++attackSeq;

					
					if(attackList.insert(attackPacket->id).second)
					{
						WriteFormattedPacket(fatklist, attackPacket);
						
						cnt ++;
					}


					
					if (!ExtractPcapPacket(fatk, attackPacket))
					{
						// printf("end!\n");
						fclose(fatk);
						fatk = fopen(attackFlowDir[k], "rb");
						ReadPcapFileHeader(fatk);
						ExtractPcapPacket(fatk, attackPacket);
						offset = normalPacket->us;
						continue;
					}
				}

				
				WriteFormattedPacket(fmix, normalPacket);
				++Normalnum;
				++Packetnum;
			}
			// printf("end! %d\n",attackSeq);
			while (US(attackPacket) < datalen)
			{
				currentUs = US(attackPacket);
				attackPacket->us = US(attackPacket);
				attackPacket->id = ID(attackPacket);
				WriteFormattedPacket(fmix, attackPacket);
				++attackSeq;
				++Packetnum;
				if(attackList.insert(attackPacket->id).second)
				{
					
					WriteFormattedPacket(fatklist, attackPacket);
					++cnt;
				}

				if (!ExtractPcapPacket(fatk, attackPacket))
				{
					fclose(fatk);
					fatk = fopen(attackFlowDir[k], "rb");
					ReadPcapFileHeader(fatk);
					ExtractPcapPacket(fatk, attackPacket);
					offset = currentUs + (uint64_t)((double)maxOffset * (double)rand() / (double)RAND_MAX);
					continue;
				}
			}

			fclose(fmix);
			fclose(fmed);
			fclose(fatk);
			// printf("\033[1A\033[KAttack flow %d inserted\n", i);

			
			fmed = fopen(medFlowDir, "wb");
			fmix = fopen(mixFlowDir, "rb");
			while (ExtractFormattedPacket(fmix, normalPacket))
				WriteFormattedPacket(fmed, normalPacket);
			fclose(fmix);
			fclose(fmed);
			
			if (i == 599)
				sprintf(mixFlowDir, "mix/%s_%d.dat", comment, 700);
			else if (i == 699)
				sprintf(mixFlowDir, "mix/%s_%d.dat", comment, 800);
			else if (i == 799)
				sprintf(mixFlowDir, "mix/%s_%d.dat", comment, 900);
			else if (i == 899)
				sprintf(mixFlowDir, "mix/%s_%d.dat", comment, 1000);
				
		}
	}
	// fclose(flist);
	printf("Done. Insert %d APT flows. %d atk Packets %ld tot Packets\n", cnt, attackSeq,Packetnum);
	freopen("log.out","w",stdout);
	printf("Done. Insert %d APT flows. %d atk Packets %ld tot Packets\n", cnt, attackSeq,Packetnum);
	return 0;
}
