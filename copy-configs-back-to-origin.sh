#!/bin/bash

cp -vp ~/System/configs/.bash_aliases ~/.bash_aliases
cp -vp ~/System/configs/.bash_aliases.bak ~/.bash_aliases.bak
cp -vp ~/System/configs/.bashrc ~/.bashrc
cp -vp ~/System/configs/.bashrc.bak ~/.bashrc.bak
cp -vp ~/System/configs/.vimrc ~/.vimrc
cp -vp ~/System/configs/.vimrc.bak ~/.vimrc.bak
cp -vp ~/System/configs/albert.conf ~/.config/albert.conf
cp -vp ~/System/configs/Trolltech.conf ~/.config/Trolltech.conf
cp -vp ~/System/configs/user-dirs.dirs ~/.config/user-dirs.dirs
cp -vp ~/System/configs/user-dirs.locale ~/.config/user-dirs.locale
cp -vp ~/System/configs/user ~/.config/dconf/user
cp -vp ~/System/configs/accels ~/.config/gedit/accels
cp -vp ~/System/configs/gtkfilechooser.ini ~/.config/gtk-2.0/gtkfilechooser.ini
cp -vp ~/System/configs/bookmarks ~/.config/gtk-3.0/bookmarks
cp -vp ~/System/configs/settings.ini ~/.config/gtk-3.0/settings.ini
cp -vp ~/System/configs/leafpadrc ~/.config/leafpad/leafpadrc
cp -vp ~/System/configs/libfm.conf ~/.config/libfm/libfm.conf
cp -vp ~/System/configs/launchtaskbar.cfg ~/.config/lxpanel/launchtaskbar.cfg
cp -vp ~/System/configs/config ~/.config/lxpanel/Lubuntu/config
cp -vp ~/System/configs/panel ~/.config/lxpanel/Lubuntu/panels/panel
cp -vp ~/System/configs/autostart ~/.config/lxsession/Lubuntu/autostart
cp -vp ~/System/configs/desktop.conf ~/.config/lxsession/Lubuntu/desktop.conf
cp -vp ~/System/configs/settings.conf ~/.config/lxsession-default-apps/settings.conf
cp -vp ~/System/configs/lxterminal.conf ~/.config/lxterminal/lxterminal.conf
cp -vp ~/System/configs/lubuntu-rc.xml ~/.config/openbox/lubuntu-rc.xml
cp -vp ~/System/configs/desktop-items-0.conf ~/.config/pcmanfm/lubuntu/desktop-items-0.conf
cp -vp ~/System/configs/pcmanfm.conf ~/.config/pcmanfm/lubuntu/pcmanfm.conf
cp -vp ~/System/configs/desktop.dockitem ~/.config/plank/dock1/launchers/desktop.dockitem
cp -vp ~/System/configs/lxterminal.dockitem ~/.config/plank/dock1/launchers/lxterminal.dockitem
cp -vp ~/System/configs/pcmanfm.dockitem ~/.config/plank/dock1/launchers/pcmanfm.dockitem
cp -vp ~/System/configs/slingscold.dockitem ~/.config/plank/dock1/launchers/slingscold.dockitem
cp -vp ~/System/configs/sublime_text.dockitem ~/.config/plank/dock1/launchers/sublime_text.dockitem
cp -vp ~/System/configs/trash.dockitem ~/.config/plank/dock1/launchers/trash.dockitem

# Manual copy back to origin lines
cp -vp ~/System/icons-png/jason.png ~/Public/jason.png

cp -vpr ~/System/bin* ~/
sudo mkdir /usr/local/share/applications
sudo cp -vp ~/System/dot-desktops/* /usr/local/share/applications/
cp -vp ~/System/Launchers/* ~/.local/share/applications/
sudo cp -vp ~/System/icons-png/menu-ubuntu.png /usr/share/lubuntu/images/

