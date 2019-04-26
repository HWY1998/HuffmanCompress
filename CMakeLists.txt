cmake_minimum_required(VERSION 3.13)
project(HuffmanCompress)

set(CMAKE_CXX_STANDARD 14)

add_executable(HuffmanCompress main.cpp read.cpp stdafx.h read.h compress.cpp compress.h cmake-build-debug/model.h model.h decompress.h decompress.cpp tool.cpp tool.h)