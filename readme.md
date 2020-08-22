# This is an example project that compiles Swift and C source files into a single executable on a Raspberry Pi Zero W (arm6)
It showcases:
- Foundation and FoundationNetworking types can be instanciated (and thus used) in Swift, including GCD / libdispatch
- A function implemented using C can be called in Swift using a bridging-header
- How to debug the executable using lldb (explained in the build.sh file)
- What compiler commands to run to end up with a working executable
- How to use a BASH-4 feature called GLOBSTAR

First, get the Swift compiler on your Raspberry Pi: simply follow the instructions as found on [https://swift-arm.com/install-swift/](https://swift-arm.com/install-swift/). To save you a click, here are the commands (note that if these don't work, they might be out of date)

## 1 add swift5 to apt
`curl -s https://packagecloud.io/install/repositories/swift-arm/release/script.deb.sh | sudo bash`

## 2 Install swift 5
`sudo apt-get install swift5`

## 3 Run the build script (this script contains a few steps only. Adjust or expand them as needed).
`./build.sh`


Jorrit van Asselt
August 22, 2020