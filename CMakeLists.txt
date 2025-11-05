cmake_minimum_required(VERSION 3.15)
project(sbwt_api_example LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_BUILD_TYPE Release)

# === Step 1: Add SBWT as a subdirectory ===
# This ensures SBWT gets built before the example.
add_subdirectory(external/SBWT ${CMAKE_BINARY_DIR}/sbwt_build)

# === Step 2: Include directories ===
include_directories(
    ${CMAKE_SOURCE_DIR}/external/SBWT/build/external/sdsl-lite/build/include
    ${CMAKE_SOURCE_DIR}/external/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/include
    ${CMAKE_SOURCE_DIR}/external/SBWT/build/external/SeqIO/include
    ${CMAKE_SOURCE_DIR}/external/SBWT/include
    ${CMAKE_SOURCE_DIR}/external/SBWT/include/sbwt
)

# === Step 3: Executable ===
add_executable(sbwt_benchmark src/sbwt_benchmark.cpp)

# === Step 4: Link libraries ===
target_link_libraries(sbwt_benchmark
    sbwt_static
    ${CMAKE_SOURCE_DIR}/external/SBWT/build/external/KMC/build/libkmc_core.a
    ${CMAKE_SOURCE_DIR}/external/SBWT/build/external/KMC/build/libkmc_tools.a
    sdsl
    z
    pthread
)

# === Step 5: Platform-specific flags ===
target_compile_options(sbwt_benchmark PRIVATE -O3 -Wno-deprecated-declarations)
