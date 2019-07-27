#!/bin/bash

options=("First option" "Second option" "Quit")
PS3="So what? "
select opt in "${options[@]}"
do
    case $opt in
        "First option")
            echo "First option"
            ;;
        "Second option")
            echo "Second option"
            ;;
        "Quit")
            echo "We are done..."
            break
            ;;
        *)
            PS3="" # this hides the prompt
            echo asdf | select foo in "${options[@]}"; do break; done # dummy select
            PS3="So what? " # this displays the common prompt
            ;;
    esac
done

