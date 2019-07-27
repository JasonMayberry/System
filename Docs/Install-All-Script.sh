#!/bin/bash

# Jason's Install all script
sudo apt update
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install timeshift

sudo apt install -y git
# unzip Lubuntu-Setup-master.zip            # Uncomment if package was downloaded from the gui webpage
# mv ~/Lubuntu-Setup-master Lubuntu-Setup   # Uncomment if package was downloaded from the gui webpage
# Comment the following line if package was downloaded from the gui webpage
git clone https://github.com/JasonMayberry/Lubuntu-Setup # Download Lubuntu-Setup
sudo cp -v ~/Lubuntu-Setup/etc/timeshift.json /etc/timeshift.json

# Tell Timeshift to take a snapshot before the rest of this script runs.
sudo timeshift --create --yes

# Prepare to install sublime-text
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install -y sublime-text
sudo apt-get install -y ttf-mscorefonts-installer
sudo apt install -y libdvd-pkg
sudo dpkg-reconfigure libdvd-pkg
sudo apt autoremove
# Once libdvd-pkg has finished installing, you can walk and let the script do the rest

# Jason's Install all from default repositories script
sudo apt update
sudo apt upgrade
sudo apt install -y aptitude brasero chromium-browser chromium-chromedriver chromium-bsu cmatrix converseen fbreader figlet gedit gedit-developer-plugins gedit-plugins zeitgeist geeqie gimp gimp-data-extras gcc-7-locales python-gobject-2-dbg python-gtk2-doc gimp-gmic gimp-help-en gimp-plugin-registry icc-profiles glew-utils libtiff-opengl gscan2pdf gthumb gufw httraqt inkscape jp2a libreoffice librole-tiny-perl links links2 lyx openclipart-libreoffice openclipart-png pdf2djvu pdfshuffler perl-tk preload qalc retext scribus tree vim vim-gtk3 vlc-bin webhttrack zathura gnome-screenshot sysinfo gparted okular photocollage quadrapassel simplescreenrecorder

# Settings
sudo ufw enable # enable the firewall
sed -i 's/ClockFmt=%R/ClockFmt=%l:%M %p/g' ~/.config/lxpanel/Lubuntu/panels/panel # Reset the Clock Format
lxpanelctl restart # Refresh clock

# Install Lubuntu-Setup
cp -r -v ~/Lubuntu-Setup/bin/ ~/bin/
cp -v ~/Lubuntu-Setup/dot-files/* ~/
cp -v ~/Lubuntu-Setup/dot-files/.* ~/
cp -v ~/Lubuntu-Setup/dot-files/.config/openbox/* ~/.config/openbox/
cp -r -v ~/Lubuntu-Setup/dot-files/.icons* ~/
cp -v ~/Lubuntu-Setup/dot-files/.local/share/applications/* ~/.local/share/applications/
cp -r -v ~/Lubuntu-Setup/Lubuntu-Docs* ~/
sudo cp -v ~/Lubuntu-Setup/my-.desktop-files/* /usr/local/share/applications/
cp -r -v ~/Lubuntu-Setup/System* ~/
rm -rf ~/Lubuntu-Setup

