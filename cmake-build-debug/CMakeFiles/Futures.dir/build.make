# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Futures.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Futures.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Futures.dir/flags.make

CMakeFiles/Futures.dir/main.cpp.o: CMakeFiles/Futures.dir/flags.make
CMakeFiles/Futures.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Futures.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Futures.dir/main.cpp.o -c /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/main.cpp

CMakeFiles/Futures.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Futures.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/main.cpp > CMakeFiles/Futures.dir/main.cpp.i

CMakeFiles/Futures.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Futures.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/main.cpp -o CMakeFiles/Futures.dir/main.cpp.s

CMakeFiles/Futures.dir/Futures.cpp.o: CMakeFiles/Futures.dir/flags.make
CMakeFiles/Futures.dir/Futures.cpp.o: ../Futures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Futures.dir/Futures.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Futures.dir/Futures.cpp.o -c /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/Futures.cpp

CMakeFiles/Futures.dir/Futures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Futures.dir/Futures.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/Futures.cpp > CMakeFiles/Futures.dir/Futures.cpp.i

CMakeFiles/Futures.dir/Futures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Futures.dir/Futures.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/Futures.cpp -o CMakeFiles/Futures.dir/Futures.cpp.s

# Object files for target Futures
Futures_OBJECTS = \
"CMakeFiles/Futures.dir/main.cpp.o" \
"CMakeFiles/Futures.dir/Futures.cpp.o"

# External object files for target Futures
Futures_EXTERNAL_OBJECTS =

Futures: CMakeFiles/Futures.dir/main.cpp.o
Futures: CMakeFiles/Futures.dir/Futures.cpp.o
Futures: CMakeFiles/Futures.dir/build.make
Futures: CMakeFiles/Futures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Futures"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Futures.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Futures.dir/build: Futures
.PHONY : CMakeFiles/Futures.dir/build

CMakeFiles/Futures.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Futures.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Futures.dir/clean

CMakeFiles/Futures.dir/depend:
	cd /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/cmake-build-debug /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/cmake-build-debug /Users/antoineperrin/Documents/Work/Cpp_programing/Cpp_Packages/Futures/cmake-build-debug/CMakeFiles/Futures.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Futures.dir/depend

