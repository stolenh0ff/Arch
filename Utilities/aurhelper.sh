sudo pacman -S base-devel git
sudo git clone https://aur.archlinux.org/yay-git.git
echo "Type your username: "
read username
sudo chown -R "$username":"$username" yay-git/
cd yay-git
makepkg -si
cd ..
rm -rf yay-git
sudo pacman -Scc