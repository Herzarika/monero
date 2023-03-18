clear
# Update
sudo apt update -y && sudo apt upgrade -y
sudo apt install snap && sudo snap install cmake --classic

# Install all dependencies
sudo apt install -y make bzip2 automake libbz2-dev libssl-dev doxygen graphviz libgmp3-dev \
autotools-dev libicu-dev python2.7 python2.7-dev python3 python3-dev \
autoconf libtool curl zlib1g-dev sudo ruby libusb-1.0-0-dev \
libcurl4-gnutls-dev pkg-config patch llvm-7-dev clang-7 vim-common jq libncurses5 git

# Build all dependencies
sudo apt install build-essential cmake pkg-config libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libexpat1-dev libpgm-dev qttools5-dev-tools libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev libboost-chrono-dev libboost-date-time-dev libboost-filesystem-dev libboost-locale-dev libboost-program-options-dev libboost-regex-dev libboost-serialization-dev libboost-system-dev libboost-thread-dev python3 ccache doxygen graphviz

# Stop dulu
monerod stop_daemon

# exit dulu
monerod exit

# Hapus yang lama
rm -rf $HOME/monero

# Clone Repo
git clone https://github.com/mooonero/mordinals.git

# Get Module
clear
cd $HOME/mordinals && git submodule update --init --force

# Release Versi
cd $HOME/mordinals && git checkout release-v0.18

# Build CLI
cd $HOME/mordinals && make

# export PATH
export PATH="$PATH:$HOME/mordinals/build/release/bin"
source $HOME/.profile

# Update again
apt-get update && apt-get upgrade
