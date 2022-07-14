sudo pacman -S jre-openjdk
echo "Moving minecraft_server.sh to /home/admin/MinecraftServer"
mkdir /home/admin/MinecraftServer
sudo mv minecraft_server.sh /home/admin/MinecraftServer
cd /home/admin/MinecraftServer
wget https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar
echo "Minecraft Server Downloaded into >> /home/admin/MinecraftServer"