//
// Created by 黄文禹 on 2019-04-24.
//encoded UTF-8
//

#ifndef HUFFMANCOMPRESS_COMPRESS_H
#define HUFFMANCOMPRESS_COMPRESS_H

bool encoding(int * weights , struct HTNode * aHuffmanTree, int code[][256]);
int output(char * inputFile, char * outputFile, int code[][256],char * s, struct Head h);

#endif //HUFFMANCOMPRESS_COMPRESS_H
