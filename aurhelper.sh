sudo pacman -S base-devel git
cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
echo "username"
read username
sudo chown -R "$username":"$username" yay-git/
cd yay-git
makepkg -si