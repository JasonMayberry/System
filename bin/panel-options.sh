#!/bin/bash

# You can set the COLUMNS variable to limit the width of the display, e.g., 
# if you set it to 12, it will format your example into a single column:
COLUMNS=12
# option variables can NOT have spaces
option_1='Restore_the_panel_to_state_No-Panel'
option_2='Restore_the_panel_to_state_Basic-Tools'
option_3='Restore_the_panel_to_state_Programing'
option_4='Restore_the_panel_to_state_Wild-Card'
option_5='Save_current_panel_state_as_No-Panel'
option_6='Save_current_panel_state_as_Basic-Tools'
option_7='Save_current_panel_state_as_Programing'
option_8='Save_current_panel_state_as_Wild-Card'
option_9='Restore_the_panel_to_original_Default'

if [[ -d ~/.config/myconfigs ]]; then
    echo "Saves will be here: ~/.config/myconfigs"
else
    mkdir ~/.config/myconfigs
fi

# First line printed to stdout
echo ''
echo 'Enter a number from 1-9, then press enter.'
echo 'Enter pressed twice will refresh the list.'
echo ''
prompt="q) quit   |   Enter a number on the menu: "
# State names are used here in place of its number
PS3="$prompt"
# Define the menu list here
# The variable "$state" is not the user input. 
# The variable "$state" is the array item associated with the user input.
select state in $option_1 $option_2 $option_3 $option_4 $option_5 $option_6 $option_7 $option_8 $option_9
# Full path: ~/.config/lxpanel/Lubuntu/panels/panel
do
    echo ''
    case $state in
        $option_1)
            echo "You choose \$option_1 = $state"
            cp ~/.config/myconfigs/panel.no-panel ~/.config/lxpanel/Lubuntu/panels/panel
            lxpanelctl restart
            ;;
        $option_2)
            echo "You choose \$option_1 = $state"
            cp ~/.config/myconfigs/panel.basic-tools ~/.config/lxpanel/Lubuntu/panels/panel
            lxpanelctl restart
            ;;
        $option_3)
            echo "You choose \$option_1 = $state"
            cp ~/.config/myconfigs/panel.programing ~/.config/lxpanel/Lubuntu/panels/panel
            lxpanelctl restart
            ;;
        $option_4)
            echo "You choose \$option_1 = $state"
            cp ~/.config/myconfigs/panel.wild-card ~/.config/lxpanel/Lubuntu/panels/panel
            lxpanelctl restart
            ;;
        $option_5)
            echo "You choose \$option_1 = $state"
            cp ~/.config/lxpanel/Lubuntu/panels/panel ~/.config/myconfigs/panel.no-panel
            ;;
        $option_6)
            echo "You choose \$option_1 = $state"
            cp ~/.config/lxpanel/Lubuntu/panels/panel ~/.config/myconfigs/panel.basic-tools
            ;;
        $option_7)
            echo "You choose \$option_1 = $state"
            cp ~/.config/lxpanel/Lubuntu/panels/panel ~/.config/myconfigs/panel.programing
            ;;
        $option_8)
            echo "You choose \$option_1 = $state"
            cp ~/.config/lxpanel/Lubuntu/panels/panel ~/.config/myconfigs/panel.wild-card
            ;;
        $option_9)
            echo "You choose \$option_1 = $state"
            rm -rf ~/.config/lxpanel/Lubuntu/panels/*
            lxpanelctl restart
            ;;
        # Matching with invalid data
        *)
        if [[ $REPLY == q ]]; then
            echo "You entered q for quit. Bye!"
            break
        else
            echo "You entered $REPLY. Any thing, other than 1-9 results in aborting. Bye!"
            break
        fi
            ;;
    esac
done

