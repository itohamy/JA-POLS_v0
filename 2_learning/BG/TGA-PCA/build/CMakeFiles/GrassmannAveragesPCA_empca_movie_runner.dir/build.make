# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.15.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.15.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/build"

# Include any dependencies generated for this target.
include CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/flags.make

CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.o: CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/flags.make
CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.o: ../applications/video_processing_empca.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.o -c "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/applications/video_processing_empca.cpp"

CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/applications/video_processing_empca.cpp" > CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.i

CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/applications/video_processing_empca.cpp" -o CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.s

# Object files for target GrassmannAveragesPCA_empca_movie_runner
GrassmannAveragesPCA_empca_movie_runner_OBJECTS = \
"CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.o"

# External object files for target GrassmannAveragesPCA_empca_movie_runner
GrassmannAveragesPCA_empca_movie_runner_EXTERNAL_OBJECTS =

GrassmannAveragesPCA_empca_movie_runner: CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/applications/video_processing_empca.cpp.o
GrassmannAveragesPCA_empca_movie_runner: CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/build.make
GrassmannAveragesPCA_empca_movie_runner: libgrassmann_averages.a
GrassmannAveragesPCA_empca_movie_runner: /usr/local/lib/libopencv_highgui.4.1.0.dylib
GrassmannAveragesPCA_empca_movie_runner: /Applications/boost_1_71_0/stage/lib/libboost_program_options.a
GrassmannAveragesPCA_empca_movie_runner: /Applications/boost_1_71_0/stage/lib/libboost_system.a
GrassmannAveragesPCA_empca_movie_runner: /Applications/boost_1_71_0/stage/lib/libboost_thread.a
GrassmannAveragesPCA_empca_movie_runner: /Applications/boost_1_71_0/stage/lib/libboost_date_time.a
GrassmannAveragesPCA_empca_movie_runner: /usr/local/lib/libopencv_videoio.4.1.0.dylib
GrassmannAveragesPCA_empca_movie_runner: /usr/local/lib/libopencv_imgcodecs.4.1.0.dylib
GrassmannAveragesPCA_empca_movie_runner: /usr/local/lib/libopencv_imgproc.4.1.0.dylib
GrassmannAveragesPCA_empca_movie_runner: /usr/local/lib/libopencv_core.4.1.0.dylib
GrassmannAveragesPCA_empca_movie_runner: CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable GrassmannAveragesPCA_empca_movie_runner"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/build: GrassmannAveragesPCA_empca_movie_runner

.PHONY : CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/build

CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/clean

CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/depend:
	cd "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA" "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA" "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/build" "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/build" "/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/2_learning/BG/TGA-PCA/build/CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/GrassmannAveragesPCA_empca_movie_runner.dir/depend

