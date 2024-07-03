#!bin/bash
echo "System Update"
sudo dnf upgrade -y

echo "Installing Languages: Nodejs, php and Rust"
sudo dnf install php-cli phpunit composer nodejs gcc golang mono cmake
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "VScode config"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code

echo "Fetching dotfiles"
git clone https://github.com/itsw0lv3/dotfiles

echo "Installing nice things"
sudo dnf install neovim tmux
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

echo "Installing tool sets"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#AWS
unzip awscliv2.zip
sudo ./aws/install
# DOCKER
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io
sudo systemctl enable docker
sudo systemctl start docker
# Google Cloud
sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-cli]
name=Google Cloud CLI
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el9-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=0
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM
sudo dnf install google-cloud-cli
