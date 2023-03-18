clear

sudo apt update -y && sudo apt upgrade -y

sudo apt-get install libgtest-dev && cd /usr/src/gtest && sudo cmake . && sudo make

sudo mv lib/libg* /usr/lib/

sudo apt update && sudo apt install build-essential cmake pkg-config libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libexpat1-dev libpgm-dev qttools5-dev-tools libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev libboost-chrono-dev libboost-date-time-dev libboost-filesystem-dev libboost-locale-dev libboost-program-options-dev libboost-regex-dev libboost-serialization-dev libboost-system-dev libboost-thread-dev python3 ccache doxygen graphviz

git clone https://github.com/mooonero/mordinals.git

cd $HOME/mordinals && git submodule update --init --force

cd $HOME/mordinals && make
