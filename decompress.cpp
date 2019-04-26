//
// Created by 黄文禹 on 2019-04-25.
//

#include "stdafx.h"

bool decompress(char * inputFile, char * outputFile, struct HTNode * aHuffmanTree, char * s){
    struct Head h;
    FILE * fp1 = fopen(inputFile,"rb");
    FILE * fp2 = fopen(outputFile,"wb");
    int root = 511;
    fread(&h,sizeof(Head),1,fp1);
    unsigned char temp;
    char stemp[8];
    int count = 0;
    while(!feof(fp1)){
        memset(stemp,0,sizeof(stemp));
        fread(&temp,1,1,fp1);
        byte2str(temp,stemp);
        for(int i = 0;i<8;i++)
            s[count++] = stemp[i];
    }
    for(int i = 0;s[i];i++){
        int j = root;
        while(aHuffmanTree[j].lchild != -1 && aHuffmanTree[j].rchild != -1 ){
            if(s[i] == '0'){
                j = aHuffmanTree[j].lchild;
                i++;
            }
            else if(s[i] == '1'){
                j = aHuffmanTree[j].rchild;
                i++;
            }
        }
        unsigned char c = (unsigned char)j;
        fwrite(&c,1,1,fp2);
    }
    fclose(fp1);
    fclose(fp2);
    return true;
}