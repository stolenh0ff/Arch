sudo pacman -S base-devel git
mkdir ~/Git/ArchPackages
cd ~/Git/ArchPackages
sudo git clone https://aur.archlinux.org/yay-git.git
echo "Type your username: "
read username
sudo chown -R "$username":"$username" yay-git/
cd yay-git
makepkg -si