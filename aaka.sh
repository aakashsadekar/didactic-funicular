#!/bin/bash

# Fira Code
sudo apt install fonts-firacode -y

# JetBrains Mono
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.225.zip
sudo unzip -d /usr/share/fonts JetBrainsMono-2.225.zip
rm JetBrainsMono-2.225.zip

# Source Code Pro
cd ~
wget https://github.com/downloads/adobe/Source-Code-Pro/SourceCodePro_FontsOnly-1.009.zip \
    && unzip SourceCodePro_FontsOnly-1.009.zip \
    && sudo mkdir /usr/share/fonts/truetype/source-code-pro \
    && sudo cp SourceCodePro_FontsOnly-1.009/*.ttf /usr/share/fonts/truetype/source-code-pro
rm SourceCodePro_FontsOnly-1.009.zip
rm -rfv SourceCodePro_FontsOnly-1.009
cd ~

# Refresh Font cache
fc-cache -f -v

# MacOS theme
cd ~
mkdir ~/.icons
mkdir ~/.themes
mkdir ~/.fonts
cd ~/didactic-funicular
tar -xvzf macubuntu.tar.gz
mv MacOS-3D-Icons-Blue-Dark ~/.icons
mv Mojave-dark-solid ~/.themes
mv OSX-ElCap ~/.icons
mv SanFranciscoFont-master ~/.fonts
cd ~
rm macubuntu.tar.gz
rm -rfv didactic-funicular
