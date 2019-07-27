#!/bin/bash

# WORKS GREAT
wget -q https://github.com/JasonMayberry/bash-shell -O - | \grep -i -o 'n-open" title=".*" id="' | sed -e 's/^n-open" title="\([^"]\+\)".*$/\1/g' | cat > REPO.TXT


# Redirect output to a variable
repo=$(wget -q https://github.com/JasonMayberry/bash-shell -O - | \grep -i -o 'n-open" title=".*" id="' | sed -e 's/^n-open" title=\([^=]\+\)[[:space:]].*$/\1/g'); declare -a repoArray=($rep)


# Perfect for my program!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
repo=$(wget -q https://github.com/JasonMayberry/bash-shell -O - | \grep -i -o 'n-open" title=".*" id="' | sed -e 's/^n-open" title="\([^"]\+\)".*$/\1/g'); declare -a repoArray=($repo)






