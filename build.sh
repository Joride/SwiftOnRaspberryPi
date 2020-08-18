#!/bin/bash

# Compile .c files into .o files (`-c`)
# add options to generate debug info for use with lldb (`-g`)
# turn of optimization (`-O0`)
# set the architecture (`--target=...`)
clang -c -g -O0 --target=armv6--linux-gnueabihf cfunc.c

# Compile .swift files into .o files (`-emit-object`, or `-c`)
# specifying a bridging header file (`-import-objc-header`)
# and specify generation of debug info for use with lldb (`-g`)
# turn of optimization (`-Onone`)
swiftc -c -g -Onone main.swift -import-objc-header cfunc.h

# Compile the .o files into an executable binary
swiftc -o executable *.o

# run the executable 
./executable 


# To debug, it is important to specify the architecture of the executable in 
# lldb for breakpoints to work. The arhitecture can be found by running 
# `clang -v`.
# 
# Example on hot to debug using lldb and set a breakpoint:
# > lldb
# Inside lldb:
# > file --arch armv6--linux-gnueabihf executable
# > breakpoint set --line 17 --file main.swift
# > run
# 
#
