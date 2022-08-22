pacman -Syu

#AUR

pacman -S --needed pantheon lightdm-pantheon-greeter sound-theme-elementary switchboard lightdm-gtk-greeter elementary-icon-theme elementary-wallpapers pantheon-applications-menu wingpanel-indicator-session wingpanel-indicator-datetime

yay -S pantheon-session-git gnome-settings-daemon-elementary pantheon-default-settings switchboard-plug-pantheon-tweaks-git urutau-icons-git pantheon-dock-git

pacman -S --needed xorg lightdm

ls -1 /usr/share/xgreeters

#Edit /etc/lightdm/lightdm.conf
#Change greeter-session to io.elementary.greeter
#"greeter-session = io.elementary.greeter"

sudo echo "greeter-session = io.elementary.greeter" >> /etc/lightdm/lightdm.conf

#Systemctl

systemctl enable lightdm
systemctl enable NetworkManager
systemctl reboot