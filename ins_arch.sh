
#/bin/bash

sudo pacman -Syu git python python-pip # install packages
sudo pip install --upgrade pip # update pip

sudo rm -r mhddos_proxy
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git
cd mhddos_proxy
rm proxies_config.json
curl -o proxies_config.json https://raw.githubusercontent.com/opengs/uashieldtargets/v2/proxy.json
git clone https://github.com/MHProDev/MHDDoS.git
python3 -m pip install -r MHDDoS/requirements.txt
