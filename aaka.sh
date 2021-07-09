#!/bin/bash
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
rm macubuntu.tar.gz
cd ~
wget https://github.com/downloads/adobe/Source-Code-Pro/SourceCodePro_FontsOnly-1.009.zip \
    && unzip SourceCodePro_FontsOnly-1.009.zip \
    && sudo mkdir /usr/share/fonts/truetype/source-code-pro \
    && sudo cp SourceCodePro_FontsOnly-1.009/*.ttf /usr/share/fonts/truetype/source-code-pro
cd ~
