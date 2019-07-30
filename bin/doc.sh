#!/bin/bash

go_on() {
	if [[ -f ~/.doc.js/doc.js ]]; then
	    echo 'Pick the folder that has your photos in it.'
	    folder="$(zenity --title "Pick a Screenshot Folder" --file-selection --directory 2> /dev/null)"
	    cp ~/.doc.js/doc.js $folder/
	    cd $folder
	    node "$folder/doc.js"
	else
	    mkdir '~/.doc.js' 2> /dev/null
	    wget -P ~/.doc.js 'https://raw.githubusercontent.com/JasonMayberry/ScreenShots-to-Docs/master/doc.js'
	    sleep 2
	    echo 'Installing doc.js into ~/.doc.js'
	    sleep 2
	    echo '.....'
	    sleep 2
	    echo '..........'
	    sleep 2
	    echo '...................'
	    if [[ -f ~/.doc.js/doc.js ]]; then
	        go_on
	    else
	        echo 'Could not download doc.js. Try again later'
	        exit
	    fi
	fi
}

echo 'This script will create a webpage out of your screenshots or photos in'
echo 'the order that they were taken. You can then use the "print" or'
echo '"Print to file" funcality in your browser to convert the webpage to a'
echo '.pdf document. Compression of the resulting .pdf will be necessary'
echo 'for sharing because they can be quite large. My simple bash script'
echo '"compress-pdf" works! Find it here:'
echo 'https://github.com/JasonMayberry/System/blob/master/bin/compress-pdf'
echo ''

function ask() {
    echo "Before you continue you should have all of the photos that you"
    echo "want to convert into PDF, in one folder."
    echo "Do you want to continue?"
    echo "( y = Yes | n = No )"
    read reply

    if [ "$reply" == 'y' ]; then
        go_on
    fi

    if [ "$reply" == 'n' ]; then
        echo "No, Aborting..."
        exit
    fi

    if [[ ( "$reply" != 'y' ) && ( "$reply" != 'n' ) ]]; then
        echo "Invalid Answer"
        ask
    fi
}

ask

