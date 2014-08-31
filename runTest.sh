#!/bin/bash

cd SDLBuild
mkdir build
cd build
CC=/usr/bin/x86_64-w64-mingw32-gcc CXX=/usr/bin/x86_64-w64-mingw32-g++ cmake -DCMAKE_SYSTEM_NAME=Windows -DINSTALL_DIR=../../install ..
make
cd ../..

cd SDLUse
mkdir build
cd build
CC=/usr/bin/x86_64-w64-mingw32-gcc CXX=/usr/bin/x86_64-w64-mingw32-g++ cmake -DCMAKE_SYSTEM_NAME=Windows -DCMAKE_FIND_ROOT_PATH=/home/benjamin/Software/cmake-FindSDL-test/install ..
make

