//
// Created by 黄文禹 on 2019-04-23.
//encoded UTF-8
//

#include "stdafx.h"

int read(int * weights,char * filename)
{

    FILE * fp = fopen(filename,"rb");
    if(fp == NULL)
        return false;
    unsigned char x;
    int size = 0;
    memset(weights,0,sizeof(weights));
    while(!feof(fp)){
        fread(&x,1,1,fp);
        weights[x]++;
        size++;
    }
    fclose(fp);

for(int i = 0;i<256;i++)
        cout<<i<<":"<<weights[i]<<endl;

    return size;
}