#!/bin/bash

# Compile .c files into .o files
clang cfunc.c -o cfunc.o -c

# Compile .swift files into .o files, specifying a bridging header file.
swiftc -c main.swift -import-objc-header cfunc.h

# Compile the .o files into an executable binary
swiftc -o program *.o

# run the executable 
./program 
