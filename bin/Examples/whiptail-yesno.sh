#! /bin/bash

whiptail --yesno "Did you already know whiptail?" --yes-button "Yes, I did" --no-button "No, never heard of it"  10 70
CHOICE=$?
if [[ $CHOICE == 1 ]]; then
    echo "No"
elif [[ $CHOICE == 0 ]]; then
    echo "Yes"
fi
echo "$CHOICE"
