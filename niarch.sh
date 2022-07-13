pacman -S xorg-xinit xorg-xrandr sudo xorg lightdm lightdm-gtk-greeter qtile alacritty firefox pulseaudio pavucontrol pamixer neofetch neovim ranger zsh wget
sudo systemctl enable lightdm



useradd -m username
passwd username
usermod -aG wheel,video,audio,storage username

reboot
