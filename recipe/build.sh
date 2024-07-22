
#!/bin/bash

mkdir build && cd build

cmake -G Ninja ${CMAKE_ARGS} \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_POSITION_INDEPENDENT_CODE=1 \
    -DBUILD_SHARED_LIBS=1 \
    ..
cmake --build .

cmake --build . --target install
