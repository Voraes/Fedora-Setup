#!/usr/bin/bash

#Install Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#Install all Flatpaks Apps
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub tech.feliciano.pocket-casts
flatpak install flathub io.github.shiftey.Desktop

#VSCode Install
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install code

#Chromium Install
sudo dnf install chromium

#Theme
sudo mkdir ~/.themes
sudo mv THEME/Catppuccin-Latte/ ~/.themes
sudo mv THEME/Catppuccin-Latte-B.css ~/.config/gtk-4.0/

#Icon Theme
sudo dnf install numix-icon-theme-circle

#Cursor
sudo mv CURSOR/Bibata-Modern-Ice/ /usr/share/icons

#Gnome-Tweaks Install
sudo dnf install gnome-tweaks

#Move Wallpapers to Pictures
sudo mv Wall_papers/ ~/Pictures/

#Node, n and PNPM
sudo dnf install nodejs
sudo npm install -g n
corepack enable
sudo n stable

#Terminal
sudo mv Terminal/.bashrc ~ 
sudo mv Terminal/starship.toml ~/.config

#Exit
exit

