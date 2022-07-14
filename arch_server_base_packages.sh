
pacman -S jre-openjdk xorg-xinit xorg-xrandr sudo xorg lightdm lightdm-gtk-greeter qtile alacritty firefox pulseaudio pavucontrol pamixer neofetch neovim ranger zsh wget
sudo systemctl enable lightdm

useradd -m admin
passwd admin
usermod -aG wheel,video,audio,storage admin

cp /opt/ARCH/sudoers /etc/sudoers

sudo pacman -S wget zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

reboot