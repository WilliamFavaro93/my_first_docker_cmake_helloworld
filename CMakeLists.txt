cmake_minimum_required(VERSION 3.10)
project(hello)

# Aggiungi la libreria
add_library(my_lib src/print/print.c)

# Specifica dove trovare gli header
target_include_directories(my_lib PUBLIC ${CMAKE_SOURCE_DIR}/src/print)

# Crea l'eseguibile
add_executable(my_exe main.c)

# Collega la libreria all'eseguibile
target_link_libraries(my_exe PRIVATE my_lib)