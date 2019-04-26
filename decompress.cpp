//
// Created by 黄文禹 on 2019-04-25.
//

#include "stdafx.h"

bool decompress(char * inputFile, char * outputFile, struct HTNode * aHuffmanTree, char * s){
    struct Head h;
    FILE * fp1 = fopen(inputFile,"rb");
    FILE * fp2 = fopen(outputFile,"wb");
    int root;
    for(int i = 0;i<512;i++){
        if(aHuffmanTree[i].parent == 0){
            root = i;
            break;
        }
    }
    fread(&h,sizeof(Head),1,fp1);
    char temp;
    char stemp[8];
    while(!feof(fp1)){
        memset(stemp,0,sizeof(stemp));
        fread(&temp,1,1,fp1);
        byte2str(temp,stemp);
        strcat(s,stemp);
    }
    for(int i = 0;s[i];i++){
        int j = root;
        while(aHuffmanTree[j].lchild != 0 && aHuffmanTree[j].rchild != 0){
            if(s[i] == '0'){
                j = aHuffmanTree[j].lchild;
                i++;
            }
            else if(s[i] == '1'){
                j = aHuffmanTree[j].rchild;
                i++;
            }
        }
        char c = (char)j;
        fwrite(&c,1,1,fp2);
    }
    fclose(fp1);
    fclose(fp2);
    return true;
}