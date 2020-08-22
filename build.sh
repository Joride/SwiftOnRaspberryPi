#!/bin/bash

BUILD_DIR_NAME="build"
EXECUTABLE_NAME="executable"
SWIFT_MODULE_NAME="MyModule"
OBJC_HEADER_NAME="objc-header.h"
TARGET_ARCH="armv6--linux-gnueabihf"

mkdir build > /dev/null 2>&1

# Compile .c files into .o files (`-c`)
# add options to generate debug info for use with lldb (`-g`)
# turn of optimization (`-O0`)
# set the architecture (`--target=...`)
# The architecture can be found by running `clang -v` on the machine you are
# compiling for
clang -c -g -O0 --target="$TARGET_ARCH" *.c 


# Compile .swift files into .o files (`-emit-object`, or `-c`)
# specifying a bridging header file (`-import-objc-header`)
# and specify generation of debug info for use with lldb (`-g`)
# turn of optimization (`-Onone`)
# specofy a module name (`-module-name`), this is required when compiling 2 or more swift files
swiftc -c -g -Onone *.swift -import-objc-header "$OBJC_HEADER_NAME" -module-name "$SWIFT_MODULE_NAME"

mv -f *.o "$BUILD_DIR_NAME"/

# Compile the .o files into an executable binary
swiftc -o "$BUILD_DIR_NAME"/"$EXECUTABLE_NAME" "$BUILD_DIR_NAME"/*.o

# run the executable 
./"$BUILD_DIR_NAME"/"$EXECUTABLE_NAME"


# To debug, it is important to specify the architecture of the executable in 
# lldb for breakpoints to work. The architecture can be found by running 
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
