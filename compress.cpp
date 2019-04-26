//
// Created by 黄文禹 on 2019-04-24.
//encoded UTF-8
//

#include "stdafx.h"

bool encoding(int * weight,struct HTNode * aHuffmanTree,int code[][256])
{
    for(int i = 0;i<256;i++){
        int len = 0;
        int temp = i;
        int pa = aHuffmanTree[temp].parent;
        while(pa != 0){
            len++;
            if(temp == aHuffmanTree[pa].lchild){
                code[i][len] = 0;
            }else if(temp == aHuffmanTree[pa].rchild){
                code[i][len] = 1;
            }
            code[i][0] = len;
            temp = pa;
            pa = aHuffmanTree[temp].parent;
        }
    }
    return true;
}

int output(char * inputFile, char * outputFile,int code[][256],char * s, struct Head h){
    FILE * fp1 = fopen(inputFile,"rb");
    FILE * fp2 = fopen(outputFile,"wb");
    unsigned char x;
    int count = 0;
    while(!feof(fp1)){
        fread(&x,1,1,fp1);
        int len = code[x][0];
        for(int i = len;i>=1;i--){
            s[count++] = '0'+code[x][i];
            //char c = (char)code[x][i];
            //strcat(s,&c);
        }
    }
    for(int i = 0;s[i];i++)
        cout<<s[i];
    cout<<endl;
    int i = 0;
    unsigned char c;
    int size = 0;
    fwrite(&h,sizeof(Head),1,fp2);
    while(s[i]){
        c = str2byte(&s[i]);
        fwrite(&c,1,1,fp2);
        size++;
        i += 8;
    }
    //out<<size<<"bytes"<<endl;
    fclose(fp1);
    fclose(fp2);
    return size;
}

