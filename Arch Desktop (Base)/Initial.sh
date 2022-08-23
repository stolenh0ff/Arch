#!/bin/bash

echo "WARNING"
echo "This Script will create a new User "

echo "Type your new username: "
read username
useradd -m "$username"

echo "Type your new password: "
passwd "$username"

usermod -aG wheel,video,audio,storage "$username"

#AUR Helper Install

sudo pacman -S base-devel git
mkdir ~/Git/ArchPackages
cd ~/Git/ArchPackages
sudo git clone https://aur.archlinux.org/yay-git.git
echo "Type your username: "
read username
sudo chown -R "$username":"$username" yay-git/
cd yay-git
makepkg -si

#Base Packages

pacman -S xorg-xinit xorg-xrandr sudo xorg lightdm lightdm-gtk-greeter qtile alacritty firefox pulseaudio pavucontrol pamixer neofetch neovim ranger zsh wget feh libmtp glib2 gvfs picom geeqie vlc 
systemctl enable lightdm

yay -S simple-mtpfs brave-bin

sudo pacman -S wget zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "edit /etc/sudoers, delete # from '# %wheel ALL=(ALL) ALL' "
echo "## Uncomment to allow members of group wheel to execute any command
      # %wheel ALL=(ALL) ALL"

hour=0
min=0
sec=10
       while [ $hour -ge 0 ]; do
                while [ $min -ge 0 ]; do
                        while [ $sec -ge 0 ]; do
                                echo -ne "$sec - "
                                let "sec=sec-1"
                                sleep 1

                        done
                        sec=59
                        let "min=min-1"
                done
                min=59
                let "hour=hour-1"
        done
echo "Go!!! "

nvim /etc/sudoers