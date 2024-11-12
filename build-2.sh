sudo sed -i -e 's/kernel-open$/kernel/g' /etc/nvidia/kernel.conf
sudo dkms build -m nvidia/565.57.01 --force
sudo dkms install -m nvidia/565.57.01 --force
reboot

