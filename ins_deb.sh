#!/bin/bash
sudo apt update -qq -y
sudo apt install git python3 python3-pip -qq -y
sudo apt install gcc libc-dev libffi-dev libssl-dev python3-dev rustc -qq -y
sudo pip install --upgrade pip

cd ~
sudo rm -r mhddos_proxy
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git
cd mhddos_proxy
rm proxies_config.json
curl -o proxies_config.json https://raw.githubusercontent.com/opengs/uashieldtargets/v2/proxy.json

git clone https://github.com/MHProDev/MHDDoS.git
python3 -m pip install -r MHDDoS/requirements.txt
