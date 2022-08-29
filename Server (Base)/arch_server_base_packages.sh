
useradd -m admin
passwd admin
usermod -aG wheel,video,audio,storage admin

pacman -S jre-openjdk xorg-xinit xorg-xrandr sudo xorg lightdm lightdm-gtk-greeter qtile alacritty firefox pulseaudio pavucontrol pamixer neofetch neovim ranger zsh wget
sudo systemctl enable lightdm

cp /opt/ARCH/sudoers /etc/sudoers
reboot