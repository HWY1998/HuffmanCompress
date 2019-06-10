//
// Created by 黄文禹 on 2019-04-25.
//

#include "stdafx.h"

bool decompress(char * inputFile, char * outputFile, struct HTNode * aHuffmanTree, char * s){
    struct Head h;
    FILE * fp1 = fopen(inputFile,"rb");
    FILE * fp2 = fopen(outputFile,"wb");
    int root = 510;
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
    cout<<count<<endl;
    for(int i = 0;i < count;i++){
        int j = root;
        while(true){
            if(s[i] == '0'){
                j = aHuffmanTree[j].lchild;
                if(aHuffmanTree[j].lchild == -1 && aHuffmanTree[j].rchild == -1) {
                    break;
                } else
                    i++;
            }
            else if(s[i] == '1'){
                j = aHuffmanTree[j].rchild;
                if(aHuffmanTree[j].lchild == -1 && aHuffmanTree[j].rchild == -1) {
                    break;
                } else
                    i++;
            }else{
                j = 0;
                break;
            }
        }
        unsigned char c = (unsigned char)j;
        cout<<i<<endl;
        fwrite(&c,1,1,fp2);
    }
    cout<<"finished"<<endl;
    fclose(fp1);
    fclose(fp2);
    return true;
}