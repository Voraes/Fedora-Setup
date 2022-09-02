#!/usr/bin/bash

#Configuring DNF
sudo mv dnf.conf /etc/dnf/
sudo dnf update --refresh -y

#Enabling RPM Fusion (free and non-free)
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf groupupdate core -y

#Multimedia Installation
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf groupupdate sound-and-video -y

#Nvidia Driver Installation
sudo dnf update -y 
sudo dnf install akmod-nvidia -y
echo After 5 minuter, reboot the PC and run the second Script.