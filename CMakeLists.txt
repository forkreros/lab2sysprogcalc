cmake_minimum_required(VERSION 3.10)
project(CalculatorProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(SOURCE_LIB src/calculator.cpp)
set(SOURCE_EXEC src/main.cpp)

add_library(calculator STATIC ${SOURCE_LIB})
target_include_directories(calculator PUBLIC ${PROJECT_SOURCE_DIR}/include)

add_executable(main ${SOURCE_EXEC})
target_link_libraries(main calculator)

