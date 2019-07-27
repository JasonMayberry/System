#!/bin/bash

# Install vim-cheet-sheet.sh
# * add the two lines below too ~/.bashrc file. It will add ~/bin folder to $PATH and vicheet as an alias.
#     alias vicheet='vim-cheet-sheet.sh --color=always | less -r'
#     me@linuxBox:~$ export PATH="$HOME/bin:$PATH"
#
#     me@linuxBox:~$ mkdir ~/bin
#     me@linuxBox:~$ wget -P ~/bin https://raw.githubusercontent.com/JasonMayberry/Jasons-Big-but-Brief-Vim-Cheat-Sheet/master/vim-cheet-sheet.sh
#     me@linuxBox:~$ chmod 755 ~/bin/vim-cheet-sheet.sh
#
# * after that you should be able to run vim-cheet-sheet.sh from any location in the terminal
#     me@linuxBox:~$ vicheet

Description='\033[0;32m' # Light Green
Command='\033[0;97m' # Command Bold White
Heading='\033[41m' # White on Red
Title='\033[42m' # White on Green
NC='\033[0m' # No Color

# VIM String append/replace substutions used to convert github markdown into bash.sh formatt
# For the headings:
# :%s/\#\# \(.\{-}\)$/printf \"${Heading} \1 ${NC} \\n\" #main headings/g
# For the commands:
# :%s/^\s\+\*\*\(.\{-}\)\*\* \`\(.\{-}\)\`/printf \"${Command}   \1${Description} \2${NC}\\n\"/g
# The echo command was used to avoid problems with % in a printf statement

# HOW IT WORKS:
#
# Existing string:
#    **ZQ** `-exit, ignore changes`
#
# Vim String Substitution Command:
# :%s/^\s\+\*\*\(.\{-}\)\*\* \`\(.\{-}\)\`/printf \"${Command}   \1${Description} \2${NC}\\n\"/g
#
# Modified String after running the Vim substitution:
# printf "${Command}   ZQ${Description} -exit, ignore changes${NC}\n"
#
# :                     command will follow
# %                     matches all lines in the whole file
# s/                    substitution string
# ^                     the beginning of the line
# \s                    one space, the first in this case
# \+                    any number of the preceding character
# \*\*                  literally match **
# \( expresion \)       save whatever matches the inner expression to the register \1
# .\{-}                 match any number of any kind of character
# \*\* \`               literally match ** `
# \( expresion \)       save whatever matches the inner expression to the register \2
# \`                    literally match `
# /replacement string/  Substitute every string that matches the above criteria with everything that is between the //
# like this:            /printf \"${Command}   \1${Description} \2${NC}\\n\"/
# g                     last but not least g is the global flag to do this to the whole file


# Title . VIM .
echo
printf ".${Title} VIM Cheet Sheat ${NC}.\n" #use to say . VIM .
echo
printf "${Heading} Quitting ${NC} \n" #main headings
printf "${Command}   ZZ${Description} -exit, saving changes${NC}\n" #use for command
printf "${Command}   :w${Description} -write/save changes${NC}\n" #use for command
printf "${Command}   ZQ${Description} -exit, ignore changes${NC}\n" #use for command
echo
printf "${Heading} Files ${NC} \n" #main headings
printf "${Command}   :w file${Description} -write to file${NC}\n"
printf "${Command}   :r file${Description} -read file in after line${NC}\n"
printf "${Command}   :Explore${Description} -open vim file explorer${NC}\n"
printf "${Command}   vim file1 file2${Description} -open 2 arg files${NC}\n"
printf "${Command}   :args${Description} -see list of open args${NC}\n"
printf "${Command}   :argadd t.txt${Description} -add to args list${NC}\n"
printf "${Command}   :argdelete t.txt${Description} -delete arg(s)${NC}\n"
printf "${Command}   :argedit t.txt${Description} -add to args list${NC}\n"
printf "${Command}   :fir${Description} <-edit first args list file${NC}\n"
printf "${Command}   :la${Description} ->edit last args list file${NC}\n"
printf "${Command}   :n${Description} ->goto next file${NC}\n"
printf "${Command}   :2n${Description} ->go 2 files right${NC}\n"
printf "${Command}   :N${Description} <-goto previous file${NC}\n"
printf "${Command}   :2N${Description} <-go 2 files left${NC}\n"
printf "${Command}   :e file.txt${Description} -open file in vim${NC}\n"
echo
printf "${Heading} File Tabs ${NC} \n" #main headings
printf "${Command}   vim -p file1 file2${Description} -open 2 tabs${NC}\n"
printf "${Command}   :Texplore${Description} -open file explorer tab${NC}\n"
printf "${Command}   :mksession work.vim${Description} -save session${NC}\n"
printf "${Command}   vim -S work.vim${Description} -open session${NC}\n"
printf "${Command}   :source work.vim${Description} -open session${NC}\n"
printf "${Command}   :mks!${Description} -save changes to session${NC}\n"
printf "${Command}   :tabe file.txt${Description} -open new tab${NC}\n"
printf "${Command}   :tabonly${Description} -close all but current${NC}\n"
printf "${Command}   :tabn${Description} -Goto next tab file${NC}\n"
printf "${Command}   :tabp${Description} -Goto previous tab file${NC}\n"
printf "${Command}   gt${Description} -goto next tab file (cycle)${NC}\n"
printf "${Command}   2gt${Description} -takes you to 2nd tab${NC}\n"
echo
printf "${Heading} Split Window ${NC} \n" #main headings
printf "${Command}   :split file${Description} -split, load file${NC}\n"
printf "${Command}   :vsplit file${Description} -vertical split${NC}\n"
printf "${Command}   ctrl-w up${Description} -move up a window${NC}\n"
printf "${Command}   ctrl-w left${Description} -move left a window${NC}\n"
printf "${Command}   ctrl-w ctrl-w${Description} -cycle windows${NC}\n"
printf "${Command}   ctrl-w _${Description} -maximize vertically${NC}\n"
printf "${Command}   ctrl-w |${Description} -maximize horizontally${NC}\n"
printf "${Command}   ctrl-w =${Description} -make all equal size${NC}\n"
printf "${Command}   :sview file${Description} -split readonly${NC}\n"
printf "${Command}   :close${Description} -close current window${NC}\n"
printf "${Command}   :Sexplore${Description} -split, open file explorer${NC}\n"
printf "${Command}   :Vexplore${Description} -vertical file explorer${NC}\n"
printf "${Command}   :Vexplore!${Description} -open f. explorer on right${NC}\n"
echo "  Resizing:"
printf "${Command}   ctrl-w 2 -${Description} -drop window height${NC}\n"
printf "${Command}   ctrl-w 2 +${Description} -rise window height${NC}\n"
printf "${Command}   ctrl-w 2 <${Description} -narrow window width${NC}\n"
printf "${Command}   ctrl-w 2 >${Description} -widen window width${NC}\n"
echo "  Moving Split Windows:"
printf "${Command}   ctrl+w R${Description} -rotate windows up/left${NC}\n"
printf "${Command}   ctrl+w r${Description} -rotate windows down/right${NC}\n"
printf "${Command}   ctrl+w L${Description} -Move current window right${NC}\n"
printf "${Command}   ctrl+w H${Description} -Move current window left${NC}\n"
printf "${Command}   ctrl+w J${Description} -Move current window down${NC}\n"
printf "${Command}   ctrl+w K${Description} -Move current window to top${NC}\n"
printf "${Command}   :help window-moving${Description} -to learn more${NC}\n"
echo
printf "${Heading} Settings ${NC} \n" #main headings
printf "${Command}   :set nu${Description} -numbered lines${NC}\n"
printf "${Command}   :set nonu${Description} -no numbered lines${NC}\n"
printf "${Command}   :set rnu${Description} -relative numbered lines${NC}\n"
printf "${Command}   :set nornu${Description} -no rel. numbered lines${NC}\n"
printf "${Command}   :syntax on${Description} -syntax highlighting on${NC}\n"
printf "${Command}   :set ruler${Description} -show current position${NC}\n"
printf "${Command}   :setlocal spell!${Description} -spell check on${NC}\n"
printf "${Command}   :setlocal nospell!${Description} -spell check off${NC}\n"
printf "${Command}   :set so=2${Description} -top & bottom padding${NC}\n"
printf "${Command}   :set ignorecase${Description} -when searching${NC}\n"
printf "${Command}   :noh${Description} -unsets last search pattern${NC}\n"
printf "${Command}   :set magic${Description} -for regular expressions${NC}\n"
printf "${Command}   :set ai${Description} -auto indent${NC}\n"
printf "${Command}   :set si${Description} -smart indent${NC}\n"
printf "${Command}   :set wrap${Description} -wrap lines${NC}\n"
printf "${Command}   :set tabstop=4${Description} -␣ width of tab char${NC}\n"
printf "${Command}   :set softtabstop=0${Description} -tabstop width${NC}\n"
printf "${Command}   :set expandtab${Description} -make tab key spaces${NC}\n"
printf "${Command}   :set noexpandtab${Description} -make tab key tabs${NC}\n"
printf "${Command}   :set shiftwidth=4${Description} -width of indent${NC}\n"
printf "${Command}   :set smarttab${Description} -auto indent on${NC}\n"
printf "${Command}   :help smarttab${Description} -more details${NC}\n"
echo
printf "${Heading} Inserting text ${NC} \n" #main headings
printf "${Command}   i${Description} -insert${NC}\n"
printf "${Command}   I${Description} -insert at line beginning${NC}\n"
printf "${Command}   a${Description} -append${NC}\n"
printf "${Command}   A${Description} -append end of line${NC}\n"
printf "${Command}   o${Description} -open on lower line${NC}\n"
printf "${Command}   O${Description} -open on Upper line${NC}\n"
printf "${Command}   s${Description} -substitute character${NC}\n"
echo
printf "${Heading} Insert Mode Shortcuts ${NC} \n" #main headings
printf "${Command}   ctrl+w${Description} -delete word b4 cursor${NC}\n"
printf "${Command}   ctrl+u${Description} -delete line b4 cursor${NC}\n"
printf "${Command}   ctrl+n${Description} -autocomplete${NC}\n"
echo
printf "${Heading} Text Objects ${NC} \n" #main headings
printf "${Command}   ca'${Description} -change all quotes & 'quoted'${NC}\n"
printf "${Command}   ci'${Description} -change inside quotes'${NC}\n"
printf "${Command}   caw${Description} -change all word${NC}\n"
printf "${Command}   diw${Description} -delete in word${NC}\n"
printf "${Command}   di'${Description} -delete text inside quotes'${NC}\n"
printf "${Command}   da'${Description} -delete all quotes & 'quoted'${NC}\n"
printf "${Command}   df␣${Description} -delete to space include space${NC}\n"
printf "${Command}   dt␣${Description} -delete till space${NC}\n"
printf "${Command}   va'${Description} -vis. select all quotes & 'quoted'${NC}\n"
printf "${Command}   vi'${Description} -vis. select text inside quotes'${NC}\n"
printf "${Command}   ya'${Description} -yank all quotes & 'quoted'${NC}\n"
printf "${Command}   yi'${Description} -yank text inside quotes'${NC}\n"
echo
printf "${Heading} Navigation ${NC} \n" #main headings
cat <<end
       ^
       k
    <h   l>
       j
       v
end
printf "${Command}   8j${Description} -move 8 lines down${NC}\n"
printf "${Command}   gj${Description} -down 1 wrapped line${NC}\n"
printf "${Command}   8gg${Description} -goto line 8${NC}\n"
printf "${Command}   :8${Description} -goto line 8${NC}\n"
# echo used to avoid problems with % in a printf statement
echo -e "${Command}   50%${Description} -goto middle of doc${NC}"
echo -e "${Command}   %${Description} -focus on the opposite brace${NC}"
printf "${Command}   gi${Description} -back to last insert${NC}\n"
printf "${Command}   H${Description} -high on the screen${NC}\n"
printf "${Command}   M${Description} -middle of the screen${NC}\n"
printf "${Command}   L${Description} -bottom of the screen${NC}\n"
printf "${Command}   zt${Description} -work on top of screen${NC}\n"
printf "${Command}   zz${Description} -Center workspace${NC}\n"
printf "${Command}   zb${Description} -work on bottom of screen${NC}\n"
printf "${Command}   ^${Description} -first non-blank char${NC}\n"
printf "${Command}   g_${Description} -last non-blank char${NC}\n"
printf "${Command}   ctrl+y & ctrl+e${Description} -scroll ONE line${NC}\n"
printf "${Command}   ctrl+u & ctrl+d${Description} -scroll HALF-page${NC}\n"
printf "${Command}   ctrl+b & ctrl+f${Description} -scroll FULL-page${NC}\n"
printf "${Command}   ctrl+O${Description} -Retrace moves backwards${NC}\n"
printf "${Command}   ctrl+I${Description} -Retrace moves forwards${NC}\n"
printf "${Command}   /pat${Description} -iterate all matching words${NC}\n"
echo   "   iterate words same as current"
printf "${Command}     N${Description} -next one up${NC}\n"
printf "${Command}     n${Description} -next one down${NC}\n"

printf "${Command}   #${Description} -goto previous match of current${NC}\n"
printf "${Command}   G${Description} - goto to end of file${NC}\n"
printf "${Command}   fc${Description} -go forward to 'c'${NC}\n"
printf "${Command}   Fc${Description} -go backward to 'c'${NC}\n"
printf "${Command}   w${Description} ->goto next word${NC}\n"
printf "${Command}   W${Description} ->goto next word÷spaces${NC}\n"
printf "${Command}   e${Description} ->goto end of word${NC}\n"
printf "${Command}   E${Description} ->goto end of word÷spaces${NC}\n"
printf "${Command}   b${Description} <-goto beginning of word${NC}\n"
printf "${Command}   B${Description} <-goto begin of word÷spaces${NC}\n"
printf "${Command}   0${Description} -goto beginning of line${NC}\n"
printf "${Command}   \$${Description} -goto end of line${NC}\n"
printf "${Command}   ma${Description} -sets local mark${NC}\n"
printf "${Command}   mA${Description} -sets global to path mark${NC}\n"
printf "${Command}   \`a${Description} -goto mark a${NC}\n"
printf "${Command}   :marks${Description} -list of all marks${NC}\n"
echo
printf "${Heading} Change ${NC} \n" #main headings
printf "${Command}   cc${Description} -change entire line${NC}\n"
printf "${Command}   cw${Description} -change word${NC}\n"
printf "${Command}   cW${Description} -change all to next space${NC}\n"
printf "${Command}   C${Description} -change to the end of line${NC}\n"
echo
printf "${Heading} Delete ${NC} \n" #main headings
printf "${Command}   :1,\$d${Description} -delete all lines${NC}\n"
  echo "      or :%d or ggdG"
printf "${Command}   x${Description} ->delete char to the right${NC}\n"
printf "${Command}   X${Description} <-delete char to the left${NC}\n"
printf "${Command}   D${Description} -delete to the end of line${NC}\n"
printf "${Command}   dd${Description} -delete current line${NC}\n"
printf "${Command}   :d${Description} -delete current line${NC}\n"
printf "${Command}   dw${Description} -delete word${NC}\n"
printf "${Command}   dW${Description} -delete all to next space${NC}\n"
printf "${Command}   df?${Description} ->delete through first "?"${NC}\n"
printf "${Command}   dt?${Description} ->delete to first "?"${NC}\n"
printf "${Command}   dF?${Description} <-delete back through first "?"${NC}\n"
printf "${Command}   dT?${Description} <-delete back to first "?"${NC}\n"
echo
printf "${Heading} Replace ${NC} \n" #main headings
printf "${Command}   r${Description} -replace char not insert${NC}\n"
printf "${Command}   R${Description} -replace chars not insert${NC}\n"
printf "${Command}   :s/pattern/string/flags${NC}\n"
printf "${Command}   g${Description} -flag, replace all occurrences${NC}\n"
printf "${Command}   c${Description} -flag, confirm replaces${NC}\n"
echo
printf "${Heading} Copy & Paste ${NC} \n" #main headings
printf "${Command}   yy${Description} -yank/copy line${NC}\n"
printf "${Command}   5yy${Description} -yank 5 lines${NC}\n"
printf "${Command}   :12,16y${Description} -yank 5 lines${NC}\n"
printf "${Command}   p${Description} -put/paste on lower line${NC}\n"
printf "${Command}   P${Description} -put/paste on Upper line${NC}\n"
echo
printf "${Heading} Visual Mode ${NC} \n" #main headings
printf "${Command}   v${Description} -enter visual mode${NC}\n"
printf "${Command}   V${Description} -enter visual Line mode${NC}\n"
printf "${Command}   ctrl+v${Description} -enter vis. Block mode${NC}\n"
printf "${Command}   ggvG${Description} -visual select all${NC}\n"
printf "${Command}   y${Description} -yank/copy selected${NC}\n"
printf "${Command}   o${Description} -cursor to opposite end${NC}\n"
printf "${Command}   O${Description} -cursor to opposite side${NC}\n"
printf "${Command}   gv${Description} -restore previous selection${NC}\n"
printf "${Command}   1v${Description} -selects area = to the last${NC}\n"
printf "${Command}   r${Description} -replaces select with char${NC}\n"
printf "${Command}   R${Description} -del. select, starts i mode${NC}\n"
printf "${Command}   va'${Description} -vis. select all 'quoted'${NC}\n"
printf "${Command}   vi'${Description} -vis. select inside quotes'${NC}\n"
cat <<eof
   | Select block, press c, change 1st
   | line, press Esc twice, replaces
   | block by the same text in 1st line.
   | This also works with i, I or A
eof
echo
printf "${Heading} Format ${NC} \n" #main headings
printf "${Command}   ==${Description} -auto format indentation${NC}\n"
printf "${Command}   =i{${Description} -indent inside {}${NC}\n"
printf "${Command}   gg=G${Description} -fix the indentation global${NC}\n"
printf "${Command}   :66,70s/^/# /${Description} -Commenting${NC}\n"
printf "${Command}   :66,70s/^#/${Description} -Uncommenting${NC}\n"
printf "${Command}   :12,20>${Description} -Indent${NC}\n"
printf "${Command}   :12,20>>>${Description} -Indents 3 times${NC}\n"
printf "${Command}   5>>${Description} -Indents 5 lines${NC}\n"
printf "${Command}   5>>..${Description} -Repeats 5>> twice${NC}\n"
echo
printf "${Heading} Special ${NC} \n" #main headings
printf "${Command}   :h${Description} -Great help info!${NC}\n"
printf "${Command}   ctrl+]${Description} -goto tag when caret is over it${NC}\n"
printf "${Command}   ctrl+G${Description} -display cursor location${NC}\n"
printf "${Command}   :tag tagname${Description} -jump to the tag${NC}\n"
# echo used to avoid problems with % in a printf statement
echo -e "${Command}   :%retab${Description} -replace all tabs with spaces${NC}"
printf "${Command}   xp${Description} -transpose two letters${NC}\n"
printf "${Command}   &${Description} -repeat last :s cmd${NC}\n"
printf "${Command}   sort${Description} -sort the whole doc${NC}\n"
printf "${Command}   22,33sort${Description} -sort line 22-33${NC}\n"
printf "${Command}   :'a,.sort${Description} -from marker a, to caret${NC}\n"
# echo used to avoid problems with % in a printf statement
echo -e "${Command}   :%sort!${Description} -sort in reverse${NC}"
echo -e "${Command}   :%sort u${Description} -remove duplicate lines${NC}"
printf "${Command}   :sort n${Description} -do numeric sort${NC}\n"
printf "${Command}   :sort i${Description} -case is ignored${NC}\n"
printf "${Command}   :help sort${Description} -more options${NC}\n"
printf "${Command}   ~${Description} -toggle case${NC}\n"
printf "${Command}   .${Description} -repeat last cmd${NC}\n"
printf "${Command}   :!${Description} -drop to external cmd${NC}\n"
printf "${Command}   !!ls${Description} -insert output of cmd${NC}\n"
printf "${Command}   ==${Description} -duplicate operator${NC}\n"
echo
printf "${Heading} Code Folding ${NC} \n" #main headings
printf "${Command}   zf${Description} -fold visible line selected${NC}\n"
printf "${Command}   2zfj${Description} -fold 3 lines down${NC}\n"
printf "${Command}   za${Description} -unfold last fold${NC}\n"
printf "${Command}   zR${Description} -unfold all ${NC}\n"
echo
printf "${Heading} Undo ${NC} \n" #main headings
printf "${Command}   u${Description} -undo last change${NC}\n"
printf "${Command}   U${Description} -undo all changes to line${NC}\n"
echo



