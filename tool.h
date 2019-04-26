//
// Created by 黄文禹 on 2019-04-25.
//

#ifndef HUFFMANCOMPRESS_TOOL_H
#define HUFFMANCOMPRESS_TOOL_H
bool createTree(int * weights,struct HTNode * aHuffmanTree);
unsigned char str2byte(char * s);
void byte2str(char c,char * s);
#endif //HUFFMANCOMPRESS_TOOL_H
