#!/bin/bash

# You can set the COLUMNS variable to limit the width of the display, e.g., 
# if you set it to 12, it will format your example into a single column:
COLUMNS=12
# option variables can NOT have spaces
option_1='cat'
option_2='tee'
option_3=${USER}
option_4='ls_-a_|_grep_config'
option_5='date'
option_6='pushd'
option_7='popd'
option_8='cp_-v_~/file_./'
option_9='Restore_Default'

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
do
	echo ''
    case $state in
	    $option_1)
	        echo "1"
	        echo " \$option_1 = $state"
	        ;;
	    $option_2)
	        echo "2"
	        echo " \$option_2 = $state"
	        ;;
	    $option_3)
	        echo "3"
	        echo " \$option_3 = $state"
	        ;;
	    $option_4)
	        echo "4"
	        echo " \$option_4 = $state"
	        ;;
	    $option_5)
	        echo "5"
	        echo " \$option_5 = $state"
	        ;;
	    $option_6)
	        echo "6"
	        echo " \$option_6 = $state"
	        ;;
	    $option_7)
	        echo "7"
	        echo " \$option_7 = $state"
	        ;;
	    $option_8)
	        echo "8"
	        echo " \$option_8 = $state"
	        ;;
	    $option_9)
	        echo "9"
	        echo " \$option_9 = $state"
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


#  select name [ in word ] ; do list ; done
#        The list of words following in is expanded, generating a list of items.  The set of
#        expanded words is printed on the standard error, each preceded by a number.  If the
#        in  word  is omitted, the positional parameters are printed (see PARAMETERS below).
#        The PS3 prompt is then displayed and a line read from the standard input.   If  the
#        line  consists  of  a  number corresponding to one of the displayed words, then the
#        value of name is set to that word.  If the line is empty, the words and prompt  are
#        displayed  again.   If  EOF  is  read, the command completes.  Any other value read
#        causes name to be set to null.  The line read is saved in the variable REPLY.   The
#        list  is executed after each selection until a break command is executed.  The exit
#        status of select is the exit status of the last command executed in list,  or  zero
#        if no commands were executed.

#  case word in [ [(] pattern [ | pattern ] ... ) list ;; ] ... esac
#        A  case  command  first expands word, and tries to match it against each pattern in
#        turn, using the same matching rules as for pathname expansion (see Pathname  Expan‐
#        sion  below).   The  word is expanded using tilde expansion, parameter and variable
#        expansion, arithmetic expansion, command  substitution,  process  substitution  and
#        quote  removal.  Each pattern examined is expanded using tilde expansion, parameter
#        and variable expansion, arithmetic expansion,  command  substitution,  and  process
#        substitution.   If  the nocasematch shell option is enabled, the match is performed
#        without regard to the case of alphabetic characters.  When a match  is  found,  the
#        corresponding  list is executed.  If the ;; operator is used, no subsequent matches
#        are attempted after the first pattern match.  Using ;& in place of ;; causes execu‐
#        tion to continue with the list associated with the next set of patterns.  Using ;;&
#        in place of ;; causes the shell to test the next pattern list in the statement,  if
#        any,  and  execute  any  associated list on a successful match.  The exit status is
#        zero if no pattern matches.  Otherwise, it is the exit status of the  last  command
#        executed in list.
