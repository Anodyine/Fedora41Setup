sudo dnf install -y vim-enhanced
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install -y code
sudo dnf install -y dnf-plugins-core
curl -O https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo sed -i -e 's/autorefresh=1$//g' brave-browser.repo 
sudo dnf config-manager addrepo --from-repofile=brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install -y brave-browser
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo dnf install -y git
sudo dnf install -y gh
curl -L -o install-tl-unx.tar.gz https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat < install-tl-unx.tar.gz | tar xf - 
cd install-tl-20241112/
sudo perl ./install-tl --no-interaction
sudo grep -qxF 'PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH"' .bashrc || echo 'PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH"' >> .bashrc
sudo dnf install perl-File-Copy
sudo dnf install perl-Time-HiRes
sudo dnf install perl-Unicode-Normalize
sudo dnf install perl-sigtrap
