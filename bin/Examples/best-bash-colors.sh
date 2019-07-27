#!/bin/bash


# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37
# And then use them like this in your script:

#    .---------- constant part!
#    vvvv vvvv-- the code from above

BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT_GRAY='\033[0;37m'
DARK_GRAY='\033[1;30m'
LIGHT_RED='\033[1;31m' #use
LIGHT_GREEN='\033[1;32m' #use for comment
YELLOW='\033[1;33m' #use
LIGHT_BLUE='\033[1;34m' #use
LIGHT_PURPLE='\033[1;35m' #use
LIGHT_CYAN='\033[1;36m' #use for additional details
WHITE='\033[1;37m' #use for command

NC='\033[0m' # No Color

printf "I ${BLACK}love${NC} Stack Overflow\n"
printf "I ${RED}love${NC} Stack Overflow\n"
printf "I ${GREEN}love${NC} Stack Overflow\n"
printf "I ${BROWN}love${NC} Stack Overflow\n"
printf "I ${BLUE}love${NC} Stack Overflow\n"
printf "I ${PURPLE}love${NC} Stack Overflow\n"
printf "I ${CYAN}love${NC} Stack Overflow\n"
printf "I ${LIGHT_GRAY}love${NC} Stack Overflow\n"
printf "I ${DARK_GRAY}love${NC} Stack Overflow\n"
printf "I ${LIGHT_RED}love${NC} Stack Overflow\n"
printf "I ${LIGHT_GREEN}love${NC} Stack Overflow\n"
printf "I ${YELLOW}love${NC} Stack Overflow\n"
printf "I ${LIGHT_BLUE}love${NC} Stack Overflow\n"
printf "I ${LIGHT_PURPLE}love${NC} Stack Overflow\n"
printf "I ${LIGHT_CYAN}love${NC} Stack Overflow\n"
printf "I ${WHITE}love${NC} Stack Overflow\n"




# If you are using the echo command, be sure to use the -e flag to allow backslash escapes.

# Continued from above example
# echo -e "I ${RED}love${NC} Stack Overflow"
# (don't add "\n" when using echo unless you want to add additional empty line)

echo "$(tput setaf 1)Red text $(tput setab 7)and white background$(tput sgr 0)"



# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

printf "I ${BRed}love${NC} Stack Overflow\n"

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

printf "I ${URed}love${NC} Stack Overflow\n"

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White


printf "I ${On_Black}love${NC} Stack Overflow\n"
printf "I ${On_Red}love${NC} Stack Overflow\n" #main headings
printf "I ${On_Green}love${NC} Stack Overflow\n" #use to say . VIM .
printf "I ${On_Yellow}love${NC} Stack Overflow\n"
printf "I ${On_Blue}love${NC} Stack Overflow\n"
printf "I ${On_Purple}love${NC} Stack Overflow\n"
printf "I ${On_Cyan}love${NC} Stack Overflow\n"
printf "I ${On_White}love${NC} Stack Overflow\n"

# }love${NC} Stack Overflow\n"

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White



printf "I ${On_IBlack}love${NC} Stack Overflow\n"
printf "I ${On_IRed}love${NC} Stack Overflow\n"
printf "I ${On_IGreen}love${NC} Stack Overflow\n"
printf "I ${On_IYellow}love${NC} Stack Overflow\n"
printf "I ${On_IBlue}love${NC} Stack Overflow\n"
printf "I ${On_IPurple}love${NC} Stack Overflow\n"
printf "I ${On_ICyan}love${NC} Stack Overflow\n"
printf "I ${On_IWhite}love${NC} Stack Overflow\n"

# printf "I ${}love${NC} Stack Overflow\n"


