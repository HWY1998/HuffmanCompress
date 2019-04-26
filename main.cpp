//
// Created by 黄文禹 on 2019-04-24.
//encoded UTF-8
//

#include "stdafx.h"


int weights[256];
struct HTNode aHuffmanTree[512];
int code[256][256];
char s[4294967295];
int main() {
    cout<<"1.compress"<<endl;
    cout<<"2.decompress"<<endl;
    cout<<"please input order"<<endl;
    int order;
    cin>>order;
    if(order == 1){
        char inputFile[50], outputFile[50];
        cout<<"Please input file's path to be compressed:";
        cin>>inputFile;
        int size0 = 0;
        if((size0 = read(weights,inputFile))!= 0 ){
            cout<<size0<<"bytes"<<endl;
            cout<<"Please input file's path to save:";
            cin>>outputFile;
            bool f0 = createTree(weights,aHuffmanTree);
            /*
            if(f0 == true)
                cout<<"success"<<endl;
            */
            bool f1 = encoding(weights,aHuffmanTree,code);
            /*
            if(f1 == true)
                cout<<"success"<<endl;
            */
            struct Head h;
            h.length = size0;
            for(int i = 0;i<256;i++){
                h.weight[i] = weights[i];
            }
            int l = strlen(inputFile);
            for(int i = 3;i>=0;i--){
                h.type[i] = inputFile[l--];
            }
            int size1 = output(inputFile,outputFile,code,s,h);
            if(size1)
                cout<<size1<<"bytes"<<endl;
            float percent = float(size1)/size0;
            cout<<"compression ratio:"<<percent*100<<"%"<<endl;
        }
    }else if(order == 2){
        char inputFile[50],outputFile[50];
        cout<<"Please input file's path to be decompressed:";
        cin>>inputFile;
        struct Head h;
        FILE * fp1 = fopen(inputFile,"rb");
        fread(&h,sizeof(h),1,fp1);
        for(int i = 0;i<256;i++){
            weights[i] = h.weight[i];
        }
        fclose(fp1);
        createTree(weights,aHuffmanTree);
        cout<<"Please input file's path to save:(suffix:"<<h.type<<")";
        cin>>outputFile;
        bool f3 = decompress(inputFile,outputFile,aHuffmanTree,s);
        if(f3 == true)
            cout<<"success"<<endl;
    }else{
        cout<<"wrong!!"<<endl;
    }
    return 0;
}