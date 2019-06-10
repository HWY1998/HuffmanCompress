//
// Created by 黄文禹 on 2019-04-25.
//

#include "stdafx.h"

//生成哈夫曼树
bool createTree(int * weights, struct HTNode * aHuffmanTree)
{
    //哈夫曼树初始化
    for(int i = 0;i<256;i++){
        aHuffmanTree[i].weight = weights[i];
        aHuffmanTree[i].lchild=aHuffmanTree[i].parent=aHuffmanTree[i].rchild = -1;
    }
    for(int i = 256; i < 511; i++){
        aHuffmanTree[i].weight = 0;
        aHuffmanTree[i].lchild=aHuffmanTree[i].parent=aHuffmanTree[i].rchild = -1;
    }
    for(int i = 0;i<255;i++){
        int start;
        for(int j = 0;j<511;j++){
            if(aHuffmanTree[j].weight && aHuffmanTree[i].parent == -1 ){
                start = j;
                break;
            }
        }
        int m, nextm;
        m = nextm = 100000;
        int m_index = -1, nextm_index = -1;
        for(int j = start; j < 511; j++) {
            if(aHuffmanTree[j].weight && aHuffmanTree[j].parent == -1) {
                if(aHuffmanTree[j].weight < m) {
                    nextm = m;
                    nextm_index = m_index;
                    m = aHuffmanTree[j].weight;
                    m_index = j;
                }else if(aHuffmanTree[j].weight < nextm) {
                    nextm = aHuffmanTree[j].weight;
                    nextm_index = j;
                }
            }
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
        temp |= (s[i]-'0')<<(8-i-1);
    }
    return temp;
}

void byte2str(unsigned char c,char * s){
    int i = 0;
    for(i = 0;i<8;i++){
        unsigned char temp = c;
        s[i] = '0'+((temp>>(8-i-1)) & 1);
    }
    //s[i] = 0;
}