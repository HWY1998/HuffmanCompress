# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/huangwenyu/CLionProjects/HuffmanCompress

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/HuffmanCompress.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HuffmanCompress.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HuffmanCompress.dir/flags.make

CMakeFiles/HuffmanCompress.dir/main.cpp.o: CMakeFiles/HuffmanCompress.dir/flags.make
CMakeFiles/HuffmanCompress.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HuffmanCompress.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HuffmanCompress.dir/main.cpp.o -c /Users/huangwenyu/CLionProjects/HuffmanCompress/main.cpp

CMakeFiles/HuffmanCompress.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HuffmanCompress.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huangwenyu/CLionProjects/HuffmanCompress/main.cpp > CMakeFiles/HuffmanCompress.dir/main.cpp.i

CMakeFiles/HuffmanCompress.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HuffmanCompress.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huangwenyu/CLionProjects/HuffmanCompress/main.cpp -o CMakeFiles/HuffmanCompress.dir/main.cpp.s

CMakeFiles/HuffmanCompress.dir/read.cpp.o: CMakeFiles/HuffmanCompress.dir/flags.make
CMakeFiles/HuffmanCompress.dir/read.cpp.o: ../read.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/HuffmanCompress.dir/read.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HuffmanCompress.dir/read.cpp.o -c /Users/huangwenyu/CLionProjects/HuffmanCompress/read.cpp

CMakeFiles/HuffmanCompress.dir/read.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HuffmanCompress.dir/read.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huangwenyu/CLionProjects/HuffmanCompress/read.cpp > CMakeFiles/HuffmanCompress.dir/read.cpp.i

CMakeFiles/HuffmanCompress.dir/read.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HuffmanCompress.dir/read.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huangwenyu/CLionProjects/HuffmanCompress/read.cpp -o CMakeFiles/HuffmanCompress.dir/read.cpp.s

CMakeFiles/HuffmanCompress.dir/compress.cpp.o: CMakeFiles/HuffmanCompress.dir/flags.make
CMakeFiles/HuffmanCompress.dir/compress.cpp.o: ../compress.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/HuffmanCompress.dir/compress.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HuffmanCompress.dir/compress.cpp.o -c /Users/huangwenyu/CLionProjects/HuffmanCompress/compress.cpp

CMakeFiles/HuffmanCompress.dir/compress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HuffmanCompress.dir/compress.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huangwenyu/CLionProjects/HuffmanCompress/compress.cpp > CMakeFiles/HuffmanCompress.dir/compress.cpp.i

CMakeFiles/HuffmanCompress.dir/compress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HuffmanCompress.dir/compress.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huangwenyu/CLionProjects/HuffmanCompress/compress.cpp -o CMakeFiles/HuffmanCompress.dir/compress.cpp.s

CMakeFiles/HuffmanCompress.dir/decompress.cpp.o: CMakeFiles/HuffmanCompress.dir/flags.make
CMakeFiles/HuffmanCompress.dir/decompress.cpp.o: ../decompress.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/HuffmanCompress.dir/decompress.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HuffmanCompress.dir/decompress.cpp.o -c /Users/huangwenyu/CLionProjects/HuffmanCompress/decompress.cpp

CMakeFiles/HuffmanCompress.dir/decompress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HuffmanCompress.dir/decompress.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huangwenyu/CLionProjects/HuffmanCompress/decompress.cpp > CMakeFiles/HuffmanCompress.dir/decompress.cpp.i

CMakeFiles/HuffmanCompress.dir/decompress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HuffmanCompress.dir/decompress.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huangwenyu/CLionProjects/HuffmanCompress/decompress.cpp -o CMakeFiles/HuffmanCompress.dir/decompress.cpp.s

CMakeFiles/HuffmanCompress.dir/tool.cpp.o: CMakeFiles/HuffmanCompress.dir/flags.make
CMakeFiles/HuffmanCompress.dir/tool.cpp.o: ../tool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/HuffmanCompress.dir/tool.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HuffmanCompress.dir/tool.cpp.o -c /Users/huangwenyu/CLionProjects/HuffmanCompress/tool.cpp

CMakeFiles/HuffmanCompress.dir/tool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HuffmanCompress.dir/tool.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huangwenyu/CLionProjects/HuffmanCompress/tool.cpp > CMakeFiles/HuffmanCompress.dir/tool.cpp.i

CMakeFiles/HuffmanCompress.dir/tool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HuffmanCompress.dir/tool.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huangwenyu/CLionProjects/HuffmanCompress/tool.cpp -o CMakeFiles/HuffmanCompress.dir/tool.cpp.s

# Object files for target HuffmanCompress
HuffmanCompress_OBJECTS = \
"CMakeFiles/HuffmanCompress.dir/main.cpp.o" \
"CMakeFiles/HuffmanCompress.dir/read.cpp.o" \
"CMakeFiles/HuffmanCompress.dir/compress.cpp.o" \
"CMakeFiles/HuffmanCompress.dir/decompress.cpp.o" \
"CMakeFiles/HuffmanCompress.dir/tool.cpp.o"

# External object files for target HuffmanCompress
HuffmanCompress_EXTERNAL_OBJECTS =

HuffmanCompress: CMakeFiles/HuffmanCompress.dir/main.cpp.o
HuffmanCompress: CMakeFiles/HuffmanCompress.dir/read.cpp.o
HuffmanCompress: CMakeFiles/HuffmanCompress.dir/compress.cpp.o
HuffmanCompress: CMakeFiles/HuffmanCompress.dir/decompress.cpp.o
HuffmanCompress: CMakeFiles/HuffmanCompress.dir/tool.cpp.o
HuffmanCompress: CMakeFiles/HuffmanCompress.dir/build.make
HuffmanCompress: CMakeFiles/HuffmanCompress.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable HuffmanCompress"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HuffmanCompress.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HuffmanCompress.dir/build: HuffmanCompress

.PHONY : CMakeFiles/HuffmanCompress.dir/build

CMakeFiles/HuffmanCompress.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HuffmanCompress.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HuffmanCompress.dir/clean

CMakeFiles/HuffmanCompress.dir/depend:
	cd /Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/huangwenyu/CLionProjects/HuffmanCompress /Users/huangwenyu/CLionProjects/HuffmanCompress /Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug /Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug /Users/huangwenyu/CLionProjects/HuffmanCompress/cmake-build-debug/CMakeFiles/HuffmanCompress.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HuffmanCompress.dir/depend

