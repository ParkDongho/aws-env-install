mkdir /home/centos/src/scripts/
curl https://s3.amazonaws.com/aws-fpga-developer-ami/1.5.0/Scripts/setup_gui.sh -o /home/centos/src/scripts/setup_gui.sh
cd /home/centos/src/scripts/
chmod 700 setup_gui.sh
./setup_gui.sh

sudo yum -y install net-tools vim make openssh-server \
  zsh firewalld gcc wget yum-utils openssl-devel bzip2-devel \
  libffi-devel zlib-devel ncurses-compat-libs sqlite-devel \
  tigervnc-server xrdp git perl python3 make autoconf flex \
  bison numactl

sudo yum -y groupinstall "Development Tools"

sudo yum -y install java-11-openjdk-devel.x86_64
sudo update-alternatives --config java

sudo rm -f /etc/yum.repos.d/bintray-rpm.repo || true
curl -L https://www.scala-sbt.org/sbt-rpm.repo > sbt-rpm.repo
sudo mv sbt-rpm.repo /etc/yum.repos.d/
sudo yum -y install sbt

curl -fL "https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz" | gzip -d > cs
chmod +x cs
./cs setup
rm cs

sudo yum -y install verilator

# nvim ----------------------------------
#
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y neovim python3-neovim

sudo yum -y install cargo
# rustup update
cargo install tree-sitter-cli

sudo dnf install ripgrep

sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
mv gdu_linux_amd64 /usr/bin/gdu

sudo dnf copr enable atim/bottom -y
sudo dnf install bottom

sudo dnf groupinstall "Development Tools"
sudo dnf module list nodejs
sudo dnf module install nodejs/development

mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/ParkDongho/astronvim_config ~/.config/nvim/lua/user

nvim














