mkdir build
cd build

set CONFIGURATION="Release"

cmake ^
    -G Ninja %CMAKE_ARGS% ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_POSITION_INDEPENDENT_CODE=1 ^
    -DBUILD_SHARED_LIBS=1 ^
    -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=1 ^
    -DCMAKE_BUILD_TYPE=%CONFIGURATION% ^
    ..
if errorlevel 1 exit 1

cmake --build . --config %CONFIGURATION%
if errorlevel 1 exit 1

cmake --build . --config %CONFIGURATION% --target install
if errorlevel 1 exit 1

