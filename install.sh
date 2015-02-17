#/bin/bash
echo "Create dir for icons on home directory"
mkdir ~/.icons
echo "Install icon theme"
cp -R elementary-add ~/.icons/elementary-add
echo "Fix size icons on slingshot and apply"
gsettings set org.pantheon.desktop.slingshot icon-size 48
gsettings set org.pantheon.desktop.slingshot columns 4
gsettings set org.gnome.desktop.interface icon-theme elementary-add
echo "Fix icon theme running apps with sudo"
sudo mkdir /root/.icons
sudo ln -s /home/$USER/.icons/elementary-add /root/.icons/elementary-add
echo "Icon theme installed!"
