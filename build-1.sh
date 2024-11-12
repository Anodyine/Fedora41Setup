sudo dnf config-manager addrepo --from-repofile=https://negativo17.org/repos/fedora-nvidia.repo
sudo dnf -y install nvidia-driver dkms-nvidia
reboot