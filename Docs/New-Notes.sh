#!/bin/bash

# New Notes

# Reset Lubuntu 18.08 Panel to default:
cat /dev/null > ~/.config/lxpanel/Lubuntu/panels/panel
lxpanelctl restart

# Main Menu Editor for LXDE. Written in Java:
# https://sourceforge.net/projects/lxmed/

#####################################
### 1. Clock Format: %l:%M %p     ###
### 2. Clock Format: %I:%M:%S %p  ###
#####################################

# change
ClockFmt=%R
# to
ClockFmt=%l:%M %p
# in
~/.config/lxpanel/Lubuntu/panels/panel
# To do this add the following two lines to your setup script
sed -i 's/ClockFmt=%R/ClockFmt=%l:%M %p/g' ~/.config/lxpanel/Lubuntu/panels/panel 
lxpanelctl restart 

# These were so hard to code I just could not throw them out
# Edit the timeshift config file to include all directories here:
sudo sed -i 's/"\/root\/\*\*"/"+ \/root\/\*\*"/g' /etc/timeshift.json
sudo sed -i 's/"\/home\/jaso\/\*\*"/"+ \/home\/jaso\/\*\*"/g' /etc/timeshift.json 
# Edit clock .config 
sed -i 's/ClockFmt=%R/ClockFmt=%l:%M %p/g' ~/.config/lxpanel/Lubuntu/panels/panel # Reset the Clock Format
lxpanelctl restart # Refresh clock


add append this to .bashrc
export PATH="$HOME/bin:$PATH"


