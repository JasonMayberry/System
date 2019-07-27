#!/bin/bash

# Notes

# Source: https://linuxconfig.org/list-installed-packages-on-ubuntu-18-04-bionic-beaver-linux
# List installed packages using command line
# Using command line will give user more precise results. There are several ways how to list installed packages on Ubuntu system. The first tool we are going to look at is apt. The below apt command will list all installed packages as well as its version number:
apt list --installed

# Alternative to the above command is the dpkg command. The next command will list installed packages, including version number, architecture and short package description:
dpkg -l | grep ^ii

# The following linux command will count all installed packages:
dpkg -l | grep ^ii | wc -l
# 495

# Note, if you are searching for a particular package name, then use grep command to search for its name. For example let's search for a package wget to see whether it is installed:
dpkg -l | grep ^ii | grep -i wget
# ii  wget       1.19.4-1ubuntu2           amd64     retrieves files from the web

# If the above command does not produce any output it means that the wget package is not installed yet.
# You can list all --exec apps like this:
ls -1 /usr/share/applications/

# Or you can list every executable package on the system like this:
aptitude -F" * %p -> %d " --no-gui --disable-columns search "?and(~i,!?section(libs), !?section(kernel), !?section(devel))"


## Find out what is available in your installed repositories
# apt-cache showpkg <package>
# Example:
apt-cache showpkg gedit-plugins

# Ubuntu uses apt for package management. Apt stores a list of repositories or software channels in the file
# /etc/apt/sources.list
# and in any file with the suffix .list under the directory
# /etc/apt/sources.list.d/
# See man sources.list for more about this storage mechanism.

## Find out which repositories are available on your system.
less /etc/apt/sources.list

## Find out which repositories are available on your system (GUI).
software-properties-gtk

## See all repositories you have added.
ls /etc/apt/sources.list.d/



# lxhotkey - Editor for ~/.config/openbox/lubuntu-rc.xml
lxhotkey global # show bound keys for actions
lxhotkey app # show all keys bound to applications

# View/Edit lubuntu keyboard shortcuts
# You can edit keyboard shortcuts with vim, 
# however using the lxhotkey gui editor is a better way to edit this file!
vim ~/.config/openbox/lubuntu-rc.xml

# Use this command with 'shift + alt + 3' for mac like full screenshots
scrot -q 100 'Screen-Shot_%Y-%m-%d_at_%I:%M:%S-%p.png' -e 'mv $f ~/Desktop/'
# Use this command with 'shift + alt + 4' for mac like select area screenshots
scrot -q 100 -s 'Screen-Shot_%Y-%m-%d_at_%I:%M:%S-%p.png' -e 'mv $f ~/Desktop/'

# made a backup
cp ~/.config/openbox/lubuntu-rc.xml ~/.config/openbox/lubuntu-rc.xml.bak


# Edit as root files in Lubuntu 18.04
# Users advised to add admin:// prefix to the path of the file you want to edit.
# You can use the following command:
gedit admin:///etc/default/apport

# To open the gui file manager to a specific folder as root:
pcmanfm admin:///etc/apt

# To open the gui file manager to the file system as root:
pcmanfm admin:///


# Editing the main Menu
cd /etc/xdg/menus
ls
# lxde-applications.menu  lxlauncher-applications.menu
sudo cp lxde-applications.menu lxde-applications.menu.bak
sudo vim lxde-applications.menu


# open pcmanfm with multiple tabs
pcmanfm /usr/local/share/applications /home/jaso/.local/share/applications

# In order to reset the lower panel to default just empty this file:
~/.config/lxpanel/Lubuntu/panels/panel



