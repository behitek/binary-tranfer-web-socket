# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /home/hieunv/apps/clion-2017.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/hieunv/apps/clion-2017.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hieunv/CLionProjects/WebSocketExample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hieunv/CLionProjects/WebSocketExample/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/WebSocketExample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/WebSocketExample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/WebSocketExample.dir/flags.make

CMakeFiles/WebSocketExample.dir/client.cpp.o: CMakeFiles/WebSocketExample.dir/flags.make
CMakeFiles/WebSocketExample.dir/client.cpp.o: ../client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hieunv/CLionProjects/WebSocketExample/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/WebSocketExample.dir/client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebSocketExample.dir/client.cpp.o -c /home/hieunv/CLionProjects/WebSocketExample/client.cpp

CMakeFiles/WebSocketExample.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebSocketExample.dir/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hieunv/CLionProjects/WebSocketExample/client.cpp > CMakeFiles/WebSocketExample.dir/client.cpp.i

CMakeFiles/WebSocketExample.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebSocketExample.dir/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hieunv/CLionProjects/WebSocketExample/client.cpp -o CMakeFiles/WebSocketExample.dir/client.cpp.s

CMakeFiles/WebSocketExample.dir/client.cpp.o.requires:

.PHONY : CMakeFiles/WebSocketExample.dir/client.cpp.o.requires

CMakeFiles/WebSocketExample.dir/client.cpp.o.provides: CMakeFiles/WebSocketExample.dir/client.cpp.o.requires
	$(MAKE) -f CMakeFiles/WebSocketExample.dir/build.make CMakeFiles/WebSocketExample.dir/client.cpp.o.provides.build
.PHONY : CMakeFiles/WebSocketExample.dir/client.cpp.o.provides

CMakeFiles/WebSocketExample.dir/client.cpp.o.provides.build: CMakeFiles/WebSocketExample.dir/client.cpp.o


CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o: CMakeFiles/WebSocketExample.dir/flags.make
CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o: ../easywsclient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hieunv/CLionProjects/WebSocketExample/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o -c /home/hieunv/CLionProjects/WebSocketExample/easywsclient.cpp

CMakeFiles/WebSocketExample.dir/easywsclient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebSocketExample.dir/easywsclient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hieunv/CLionProjects/WebSocketExample/easywsclient.cpp > CMakeFiles/WebSocketExample.dir/easywsclient.cpp.i

CMakeFiles/WebSocketExample.dir/easywsclient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebSocketExample.dir/easywsclient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hieunv/CLionProjects/WebSocketExample/easywsclient.cpp -o CMakeFiles/WebSocketExample.dir/easywsclient.cpp.s

CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o.requires:

.PHONY : CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o.requires

CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o.provides: CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o.requires
	$(MAKE) -f CMakeFiles/WebSocketExample.dir/build.make CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o.provides.build
.PHONY : CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o.provides

CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o.provides.build: CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o


CMakeFiles/WebSocketExample.dir/image_encode.cpp.o: CMakeFiles/WebSocketExample.dir/flags.make
CMakeFiles/WebSocketExample.dir/image_encode.cpp.o: ../image_encode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hieunv/CLionProjects/WebSocketExample/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/WebSocketExample.dir/image_encode.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebSocketExample.dir/image_encode.cpp.o -c /home/hieunv/CLionProjects/WebSocketExample/image_encode.cpp

CMakeFiles/WebSocketExample.dir/image_encode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebSocketExample.dir/image_encode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hieunv/CLionProjects/WebSocketExample/image_encode.cpp > CMakeFiles/WebSocketExample.dir/image_encode.cpp.i

CMakeFiles/WebSocketExample.dir/image_encode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebSocketExample.dir/image_encode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hieunv/CLionProjects/WebSocketExample/image_encode.cpp -o CMakeFiles/WebSocketExample.dir/image_encode.cpp.s

CMakeFiles/WebSocketExample.dir/image_encode.cpp.o.requires:

.PHONY : CMakeFiles/WebSocketExample.dir/image_encode.cpp.o.requires

CMakeFiles/WebSocketExample.dir/image_encode.cpp.o.provides: CMakeFiles/WebSocketExample.dir/image_encode.cpp.o.requires
	$(MAKE) -f CMakeFiles/WebSocketExample.dir/build.make CMakeFiles/WebSocketExample.dir/image_encode.cpp.o.provides.build
.PHONY : CMakeFiles/WebSocketExample.dir/image_encode.cpp.o.provides

CMakeFiles/WebSocketExample.dir/image_encode.cpp.o.provides.build: CMakeFiles/WebSocketExample.dir/image_encode.cpp.o


# Object files for target WebSocketExample
WebSocketExample_OBJECTS = \
"CMakeFiles/WebSocketExample.dir/client.cpp.o" \
"CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o" \
"CMakeFiles/WebSocketExample.dir/image_encode.cpp.o"

# External object files for target WebSocketExample
WebSocketExample_EXTERNAL_OBJECTS =

WebSocketExample: CMakeFiles/WebSocketExample.dir/client.cpp.o
WebSocketExample: CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o
WebSocketExample: CMakeFiles/WebSocketExample.dir/image_encode.cpp.o
WebSocketExample: CMakeFiles/WebSocketExample.dir/build.make
WebSocketExample: /usr/local/lib/libopencv_dnn.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_ml.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_objdetect.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_shape.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_stitching.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_superres.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_videostab.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_calib3d.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_features2d.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_flann.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_highgui.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_photo.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_video.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_videoio.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_imgcodecs.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_imgproc.so.3.3.0
WebSocketExample: /usr/local/lib/libopencv_core.so.3.3.0
WebSocketExample: CMakeFiles/WebSocketExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hieunv/CLionProjects/WebSocketExample/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable WebSocketExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WebSocketExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/WebSocketExample.dir/build: WebSocketExample

.PHONY : CMakeFiles/WebSocketExample.dir/build

CMakeFiles/WebSocketExample.dir/requires: CMakeFiles/WebSocketExample.dir/client.cpp.o.requires
CMakeFiles/WebSocketExample.dir/requires: CMakeFiles/WebSocketExample.dir/easywsclient.cpp.o.requires
CMakeFiles/WebSocketExample.dir/requires: CMakeFiles/WebSocketExample.dir/image_encode.cpp.o.requires

.PHONY : CMakeFiles/WebSocketExample.dir/requires

CMakeFiles/WebSocketExample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/WebSocketExample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/WebSocketExample.dir/clean

CMakeFiles/WebSocketExample.dir/depend:
	cd /home/hieunv/CLionProjects/WebSocketExample/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hieunv/CLionProjects/WebSocketExample /home/hieunv/CLionProjects/WebSocketExample /home/hieunv/CLionProjects/WebSocketExample/cmake-build-debug /home/hieunv/CLionProjects/WebSocketExample/cmake-build-debug /home/hieunv/CLionProjects/WebSocketExample/cmake-build-debug/CMakeFiles/WebSocketExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/WebSocketExample.dir/depend

