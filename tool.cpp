//
// Created by 黄文禹 on 2019-04-25.
//

#include "stdafx.h"

bool createTree(int * weights, struct HTNode * aHuffmanTree)
{
    for(int i = 0;i<256;i++){
        aHuffmanTree[i].weight = weights[i];
        aHuffmanTree[i].lchild=aHuffmanTree[i].parent=aHuffmanTree[i].rchild = 0;
    }

    for(int i = 0;i<255;i++){
        int start;
        for(int j = 0;j<512;j++){
            if(aHuffmanTree[j].weight && aHuffmanTree[i].parent == 0 ){
                start = j;
                break;
            }
        }
        int m = aHuffmanTree[start].weight, nextm = aHuffmanTree[start+1].weight;
        int m_index = -1,nextm_index = 0;
        for(int j = start+2;j<512;j++){
            if(aHuffmanTree[j].weight){
                if(aHuffmanTree[j].parent == 0 && aHuffmanTree[j].weight < m){
                    m = aHuffmanTree[i].weight;
                    m_index = j;
                }else if(aHuffmanTree[j].parent == 0 && aHuffmanTree[j].weight < nextm){
                    nextm = aHuffmanTree[i].weight;
                    nextm_index = j;
                }
            }else
                break;
        }
        aHuffmanTree[m_index].parent = aHuffmanTree[nextm_index].parent = 256+i;
        aHuffmanTree[256+i].weight = aHuffmanTree[m_index].weight + aHuffmanTree[nextm_index].weight;
        aHuffmanTree[256+i].lchild = m_index;
        aHuffmanTree[256+i].rchild = nextm_index;
    }
    return true;
}


unsigned char str2byte(char * s){
    unsigned char temp = 0;
    for(int i = 0; i < 8;i++){
        temp |= s[i]<<(8-i-1);
    }
    return temp;
}

void byte2str(char c,char * s){
    int i = 0;
    for(i = 0;i<8;i++){
        s[i] = c & 1<<(8-i-1);
    }
    //s[i] = 0;
}