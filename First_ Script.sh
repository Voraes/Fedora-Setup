#!/usr/bin/bash

#Configuring DNF
sudo mv dnf.conf /etc/dnf/
sudo dnf update --refresh -y

#Enabling RPM Fusion (free and non-free)
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf groupupdate core

#Multimedia Installation
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate sound-and-video

#Nvidia Driver Installation
sudo dnf update -y 
sudo dnf install akmod-nvidia
echo After 5 minuter, reboot the PC and run the second Script.