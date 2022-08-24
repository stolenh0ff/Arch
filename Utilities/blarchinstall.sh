sudo pacman -S curl
echo "Installing 'curl'"
mkdir ~/Downloads
cd ~/Downloads
echo "Directory set to ~/Downloads"
curl -O https://blackarch.org/strap.sh
echo "Downloading strap.sh"
chmod +x strap.sh
sudo ./strap.sh
echo "Executing strap.sh"
echo "haaaaaaaaaaaaaaaaaaaaaaaaaaaack!!!"