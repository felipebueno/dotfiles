#!/bin/sh

wget https://repo.radeon.com/amdgpu-install/22.40/ubuntu/jammy/amdgpu-install_5.4.50401-1_all.deb --output-document ~/Desktop/amdgpu-install.deb

chmod u+x ~/Desktop/amdgpu-install.deb
sudo apt install ~/Desktop/amdgpu-install.deb
sudo sed -i 's/ID=pop/ID=ubuntu/g' /etc/os-release

sudo amdgpu-install --usecase=opencl --no-dkms
sudo usermod -a -G video $LOGNAME
sudo usermod -a -G render $LOGNAME
sudo apt install opencl-headers ocl-icd-libopencl1 clinfo -y

sudo sed -i 's/ID=ubuntu/ID=pop/g' /etc/os-release
clinfo | grep -i opencl
sudo apt-get install amdgpu-lib rocm-opencl-runtime rocm-hip-runtime -y
# rebooted
