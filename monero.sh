cd
rm -rf $HOME/monero
rm -rf $HOME/mordinals
clear

# Update
sudo apt update -y && sudo apt upgrade -y

sudo apt install snapd && sudo snap install cmake --classic -y

sudo apt install build-essential libssl-dev -y

sudo apt-get install libgtest-dev && cd /usr/src/gtest && sudo cmake . && sudo make -y

sudo mv lib/libg* /usr/lib/

cd && sudo apt update && sudo apt install build-essential cmake pkg-config libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libexpat1-dev libpgm-dev qttools5-dev-tools libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev libboost-chrono-dev libboost-date-time-dev libboost-filesystem-dev libboost-locale-dev libboost-program-options-dev libboost-regex-dev libboost-serialization-dev libboost-system-dev libboost-thread-dev python3 ccache doxygen graphviz -y

# Install all dependencies
sudo apt install -y make bzip2 automake libbz2-dev libssl-dev doxygen graphviz libgmp3-dev \
autotools-dev libicu-dev python2.7 python2.7-dev python3 python3-dev \
autoconf libtool curl zlib1g-dev sudo ruby libusb-1.0-0-dev \
libcurl4-gnutls-dev pkg-config patch llvm-7-dev clang-7 vim-common jq libncurses5 git

# Build all dependencies
sudo apt install build-essential cmake pkg-config libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libexpat1-dev libpgm-dev qttools5-dev-tools libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev libboost-chrono-dev libboost-date-time-dev libboost-filesystem-dev libboost-locale-dev libboost-program-options-dev libboost-regex-dev libboost-serialization-dev libboost-system-dev libboost-thread-dev python3 ccache doxygen graphviz

# Clone Repo
git clone --recursive https://github.com/monero-project/monero

# Get Module
cd $HOME/monero && git submodule init && git submodule update
cd $HOME/monero && git submodule update --init --force

# Build CLI
cd $HOME/monero && git checkout release-v0.18
cd $HOME/monero && make

# export PATH
export PATH="$PATH:$HOME/mordinals/build/release/bin"
source $HOME/.profile

