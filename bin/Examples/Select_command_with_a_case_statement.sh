#!/bin/bash
echo "Which Operating System do you like?"

# Operating system names are used here as a data source
select os in Ubuntu LinuxMint Windows8 Windows7 WindowsXP
do

    case $os in
    # Two case values are declared here for matching
    "Ubuntu"|"LinuxMint")
        echo "I also use $os."
        ;;
    # Three case values are declared here for matching
    "Windows8" | "Windows10" | "WindowsXP")
        echo "Why don't you try Linux?"
        ;;
    # Matching with invalid data
    *)
        echo "Invalid entry."
        break
        ;;
    esac
done
