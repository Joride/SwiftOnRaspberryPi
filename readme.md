To get Swift on your Raspberry Pi, first follow the instructions as found on  https://swift-arm.com/install-swift/ :

## 1 add swift5 to apt
curl -s https://packagecloud.io/install/repositories/swift-arm/release/script.deb.sh | sudo bash

## 2 Install swift 5
sudo apt-get install swift5


## 3 Run the build script (this script contains 3 steps. Adjust or expand them as needed).
./build.sh
