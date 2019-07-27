#! /bin/bash

# Add some helpful aliases to end of ~/.bashrc file
# Or create a new file named ~/.bash_aliases which is sourced by default
#========================================================#
# The ALIASES section of the bash manual says:           #
# If the last character of the alias value is a blank,   #
# then the next command word following the alias is      #
# also checked for alias expansion.                      #
#========================================================#

# This looks a bit confusing, but essentially, it makes all of the other aliases you define 
# function correctly when used with sudo. 
alias sudo='sudo '
alias su='sudo -i'

# History
# keeps your history in sync across sessions
PROMPT_COMMAND='history -a ; history -n'
# Keep all your bash history:
# export HISTTIMEFORMAT="%s "
# PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo $$ $USER \
#                "$(history 1)" >> ~/.bash_eternal_history'
alias hist='history'

# Info / bash Scripting
alias bashman='wget -qO- https://www.gnu.org/software/bash/manual/bash.txt | less'
alias script-help='help # List of shell commands that are defined internally. Try help <command>'
alias script-manual='man bash # Go to line number: "man bash | less +1377"'
alias .test-syntax='echo "test \"\$(whoami)\" != 'root' && (echo you are using a non-privileged account; exit 1)"'
alias .if-test='man [ # man page for the old test program'
alias .if-expression='help [[ expression ]] # How to Execute conditional commands.'
alias .if-syntax='echo ""; echo "if [[ -z \"\$string\" ]]; then"; echo "  echo \"String is empty\""; echo "elif [[ -n \"\$string\" ]]; then"; echo "  echo \"String is not empty\""; echo "fi"; echo ""; echo "if [ "\$\(whoami\)" != 'root' ]; then"; echo "  echo \"You are not running $0 as the root user.\""; echo "  exit 1;"; echo "fi"; echo ""; echo "if [ \$USER == 'jaso' ] || [ \$USER == 'andy' ]; then"; echo "  ls -alh"; echo "else"; echo "  ls"; echo "fi"; echo ""; echo "if (( 12 >= 15 )); then"; echo "  echo \"yes\""; echo "else"; echo "  echo \"no\""; echo "fi"; echo ""'

# Navigation
alias ..="cd .."
alias ...="cd ..; cd .."
alias bin='cd ~/bin/'
alias desk='cd ~/Desktop/'
# mkdir and cd into it
mkcd() { mkdir $1;cd $1; }

# List
alias l='ls -CF'
alias l.='ls -d .* --color=auto'
alias la='ls -A'
alias ll='ls -alF' # or: alias ll='ls -l --color=auto'
alias lslong='ls -l --color=auto'
alias lsv='ls --format=single-column --color=auto' # ls -1 has the same effect of each item on its own line
alias yals='ls -lR --color | less -r' # yet another ls
# Opens tree view in less full color
alias treec='tree -C | less -r'
alias treef='tree -f | less -r'

# Json tools (pipe unformatted to these to nicely format the JSON)
alias json="python -m json.tool"
alias jsonf="python -m json.tool"

# Browsers
alias chrome='chromium-browser'
alias ff='firefox'
alias lynx='lynx -accept_all_cookies'
alias links2b='links2 -g bing.com'
alias links2d='links2 -g duckduckgo.com'
alias links2g='links2 -g google.com'
alias linksb='links bing.com'
alias linksd='links duckduckgo.com'
alias linksg='links google.com'
# MUST HAVE links installed
bing() { bingSearch="${*}"; links https://www.bing.com/search?q="${bingSearch}"; }

# Clear Screen
# Also done with ctrl+l
alias clsa='printf "\033c"' # Clear screen (all)
alias cls='clear' # Clear screen

# Files
# Open File Manager
alias files='pcmanfm' # thunar (Case or if would be good here)
# Open File Manager as admin
filesaa() { systFile="${*}"; pcmanfm admin://$systFile 2> /dev/null; }
where() { echo "What is:"; whatis $@; echo "Where is:"; whereis $@; echo "Which:"; which $@; }
what() { echo "Type:"; type $@; echo "What is:"; whatis $@; echo "Policy:"; apt-cache policy $@; echo "Show apt-cache:"; apt-cache show $@; }

# File Manipulation
alias mv="mv -v"
alias rm="rm -v"
alias cp="cpv -v"
# (copy backup) Creates a script to copy files back to the same location they were copied from.
# cpb () { cp -v $1 $2; echo "cp -vp ${2/~/\~} ${1/~/\~}" | tee -a ~/cpb.sh }

# ENVIRONMENT bash
# Use the following to output my personal functions only
# Example:~$ compgen -A function | grep "^[a-z]\+" | grep -vE "^dequote|^quote|^in_array"
# Use the following to output my personal functions and aliases
# Example:~$ compgen -a -A function | grep "^[a-z]\+" | grep -vE "^dequote|^quote|^in_array"
# (Alias List) Use the following to output my personal function names and aliases with comments (if any)
al() { st=$(alias); sto=$(compgen -A function | grep "^[a-z]\+" | grep -vE "^dequote|^quote|^in_array"); echo "$st $sto" | less --chop-long-lines; }
alias all_env_func='declare -F  # List names of all environment functions'
alias show_all_env_func='declare -f  # Show all environment functions'
alias environment='printenv | less # List All Environment Variables'
# Show $PATH Variable
alias path='echo -e "${PATH//:/\\n}"'

# Opening Assets
alias seepdf='zathura'
alias cpdf='zathura'
alias cpic='gpicview'
# Open less full color always
alias less='less -r'

# Local Files
alias vicheet='vim-cheet-sheet.sh --color=always | less -r'

# Text Editing
# alias subl='sublime-text' # open using subl or sublime-text by default or /opt/sublime_text/sublime_text
alias ebashrc='vi ~/.bashrc'
alias refbash='source ~/.bashrc'
# Example: ~$ vi- 'a long file name with lots of spaces.txt'
vi_() { strVim="${*}"; vim "${strVim// /_}"; } # replace spaces with _
vi-() { strVim="${*}"; vim "${strVim// /-}"; } # replace spaces with -
vid() { strVim="${*}"; vim "${strVim// /.}"; } # replace spaces with .
# Make backup copy then open in vi 
vibk() { echo "You are making a copy of $1 before you open it. Press enter to continue."; read nul; cp $1 $1.bak; vi $1; }
# leafpad [regular file]
e() { regFile="${*}"; leafpad $regFile 2> /dev/null; }
# edit as admin [system file]
eaa() { sysFile="${*}"; gedit admin://$sysFile 2> /dev/null; }
# gedit [regular file]
ge() { reguFile="${*}"; gedit $reguFile 2> /dev/null; }

# String Manipulation
alias esc_chars='man bash | less +446  # The solution to new line is: STR=$'string1\nstr2'; echo "$STR"'
# Example: ~$ r- a long file name with lots of spaces.txt
# output: a-long-file-name-with-lots-of-spaces.txt
r_() { strWithSpace="${*}"; echo "${strWithSpace// /_}"; } # replace spaces with _
r-() { strWithSpace="${*}"; echo "${strWithSpace// /-}"; } # replace spaces with -
rd() { strWithSpace="${*}"; echo "${strWithSpace// /.}"; } # replace spaces with .
capt() { strToCap="${*}"; echo "${strToCap^^}"; }
lower() { strToLower="${*}"; echo "${strToLower,,}"; }

# Applications
alias myapps='aptitude -F" * %p -> %d " --no-gui --disable-columns search "?and(~i,!?section(libs), !?section(kernel), !?section(devel))"'
alias udug='sudo apt-get update && apt-get upgrade'
appsearch() { echo "#--> aptitude search:"; aptitude search $@; echo "#--> apt search:"; apt search $@; }

# PERMISSIONS
# Prints out a little permissions chart
alias perms='echo ""; echo "+----------------------+"; echo "| user | group | other |"; echo "| rwx  |  rwx  |  rwx  |"; echo "| |||  |  |||  |  |||  |"; echo "| 421  |  421  |  421  |"; echo "|  +   |   +   |   +   |"; echo "|  7   |   7   |   7   |"; echo "+----------------------+"; echo "";'
alias cx='chmod 755'
# Just type: 'chmod- tab' to change mode to regular file permissions
alias 'chmod-rw-rw-r--'='chmod -v 664'
alias cm='chmod -v' 
alias t='type' 
# chmod with reference file
# A reference file can be used to set another files perms. the same as the reference files.
cmrf() { refFile="${*}"; chmod -v --reference=$refFile; }

# Extract files:
extract() {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2)  tar xjf $1    ;;
      *.tar.gz) tar xzf $1    ;;
      *.bz2)    bunzip2 $1    ;;
      *.rar)    rar x $1    ;;
      *.gz)   gunzip $1   ;;
      *.tar)    tar xf $1   ;;
      *.tbz2)   tar xjf $1    ;;
      *.tgz)    tar xzf $1    ;;
      *.zip)    unzip $1    ;;
      *.Z)    uncompress $1 ;;
      *)      echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

