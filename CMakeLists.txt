cmake_minimum_required(VERSION 3.10)
project(CppReferencesDemo LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(references_demo src/main.cpp)
