#!/bin/bash
# This fix will make Plank to execute at start

sudo echo "[Desktop Entry]" >> /etc/xdg/autostart/plank.desktop
sudo echo "Name=Plank" >> /etc/xdg/autostart/plank.desktop
sudo echo "Comment=Stupidly simple." >> /etc/xdg/autostart/plank.desktop
sudo echo "Exec=plank" >> /etc/xdg/autostart/plank.desktop
sudo echo "Icon=plank" >> /etc/xdg/autostart/plank.desktop
sudo echo "Terminal=false" >> /etc/xdg/autostart/plank.desktop
sudo echo "Type=Application" >> /etc/xdg/autostart/plank.desktop
sudo echo "Categories=Utility;" >> /etc/xdg/autostart/plank.desktop
sudo echo "NoDisplay=true" >> /etc/xdg/autostart/plank.desktop
sudo echo "X-GNOME-Autostart-Notify=false" >> /etc/xdg/autostart/plank.desktop
sudo echo "X-GNOME-AutoRestart=true" >> /etc/xdg/autostart/plank.desktop
sudo echo "X-GNOME-Autostart-enabled=true" >> /etc/xdg/autostart/plank.desktop
sudo echo "X-GNOME-Autostart-Phase=Panel" >> /etc/xdg/autostart/plank.desktop
sudo echo "OnlyShowIn=Pantheon;" >> /etc/xdg/autostart/plank.desktop