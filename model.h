//
// Created by 黄文禹 on 2019-04-25.
//

#ifndef HUFFMANCOMPRESS_MODEL_H
#define HUFFMANCOMPRESS_MODEL_H
struct HTNode{
    int weight;
    int parent;
    int lchild;
    int rchild;
};

struct Head{
    char type[4];
    int length; //源文件长度
    int weight[256];//权值
};

#endif //HUFFMANCOMPRESS_MODEL_H
