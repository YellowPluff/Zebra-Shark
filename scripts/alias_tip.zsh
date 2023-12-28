# This logic is for searching aliases when a user types a command.
# If the typed command matches an alias, it'll print a tip to use the alias instead.
__search_and_print_alias_tip()
{

    # 1 = False
    FOUND_MATCH=1

    FOUND_USER_ALIAS=${(k)aliases[(r)${1}]}
    if [ $FOUND_USER_ALIAS ];
    then
        # 0 = True
        FOUND_MATCH=0
        print -P " ++ Alias Tip: %F{green}%B$FOUND_USER_ALIAS%b%f"
    fi

    return $FOUND_MATCH
}


__zsh_alias_finder_runner()
{
    ######
    # This function will print a tip line if the user typed a command that they have an alias for.
    # It works by doing a direct search first. If that fails then it'll fall into 1 of 2 paths...
    # 1. If the command ended with a /, remove it and search again.
    # 2. If the command didn't end with a /, add it and search again.
    
    # While we could expand on this, I've opted not to. After testing I found that anything more
    # starts to slow down the terminal.

    # Though if we wanted to flesh out this code, we could make it run asynchronously.
    # Perhaps a future feature.
    ######

    USER_COMMAND_IN=$1

    __search_and_print_alias_tip $USER_COMMAND_IN
    FOUND_MATCH_RETURN=$?

    if [[ $FOUND_MATCH_RETURN != 0 ]];
    then
        # This is where special conditions start.
        # Condition 0: ~
        if [[ $1 == *~* ]];
        then
            # Convert the ~ to $HOME and try again.
            USER_COMMAND_IN=${USER_COMMAND_IN//'~'/$HOME}
        fi

        # Condition 1: The user command was 'cd' and ends with a /
        if [[ $1 == cd* ]] && [[ $1 == */ ]];
        then
            # If the user command ends with a /, then strip the / and try to match.
            USER_COMMAND_IN=${USER_COMMAND_IN[1,-2]}
        # Condition 2: The user command was 'cd' but doesn't end with a /
        elif [[ $1 == cd* ]];
        then
            # If the user command does not end with a /, then add a / and try to match.
            USER_COMMAND_IN=$USER_COMMAND_IN/
        fi
        
        # Attempt a search again after a / was removed/added.
        __search_and_print_alias_tip $USER_COMMAND_IN
    fi
}

add-zsh-hook preexec __zsh_alias_finder_runner