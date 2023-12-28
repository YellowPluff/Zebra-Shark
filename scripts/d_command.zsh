# Directory Stack Options
# The following options are necessary to support directory stack usage
setopt AUTO_PUSHD        # Automatically push directories onto the directory stack
setopt AUTO_CD           # If a directory is typed as the only command cd into that directory
setopt PUSHD_IGNORE_DUPS # Ignore duplicate entries in the directory stack
setopt PUSHD_SILENT      # Push directories onto the stack silently
setopt PUSHD_MINUS       # Exchange meaning of + and - when specifying dir in dir stack (aligns with directory stack aliases)

# The 'd' command

DIRECTORY_STACK_SIZE=10

# Global variable for tracking where the user is travelling to using the 'd' command.
# Used for un-setting the travel function that gets created dynamically.
D_COMMAND_TEMP_NUMBER_TO_NAVIGATE_TO=-1

d()
{
    echo "_________ Enter number to navigate to directory... _________"
    dirs -v | head -$DIRECTORY_STACK_SIZE
}

__directory_navigate_to_user_number_dir()
{
    # The following conditions must be met in order to execute command
    # as directory navigation.
    # If user input is a number
    # If user input is less than 'd' stack size value
    # If the last command was 'd'

    NUMERIC_REGULAR_EXPRESSION='^[0-9]+$'
    if [[ $1 =~ $NUMERIC_REGULAR_EXPRESSION ]];
    then
        if [[ $1 -lt $DIRECTORY_STACK_SIZE ]];
        then
            if [[ $USER_LAST_COMMAND = 'd' ]];
            then
                # The way this logic works is kind of tricky.
                # This function is hooked to the preexec hookable function, and that means that
                # for every command that gets run, this function runs before it. But only certain conditions will you get this far.
                # If you did manage to get this far then you'll save the number you entered, and use that to generate a
                # function that executes the cd - command. Then the function below, named __reset_directory_travel_info, was hooked
                # to the precmd hookable function. That means that it runs every time the prompt gets re-drawn.
                # So basically, in order....
                # 1. preexec generates dynamic function
                # 2. Shell runs dynamic function
                # 3. precmd deletes dynamic function
                D_COMMAND_TEMP_NUMBER_TO_NAVIGATE_TO=$1
                $1()
                {
                    cd -$D_COMMAND_TEMP_NUMBER_TO_NAVIGATE_TO
                }
            fi
        fi
    fi

    # Save off user entered command
    USER_LAST_COMMAND=$1
}
add-zsh-hook preexec __directory_navigate_to_user_number_dir


__reset_directory_travel_info()
{
    if (( $D_COMMAND_TEMP_NUMBER_TO_NAVIGATE_TO != -1 ));
    then
        # Delete the function
        unset -f $D_COMMAND_TEMP_NUMBER_TO_NAVIGATE_TO

        # Reset the variable
        D_COMMAND_TEMP_NUMBER_TO_NAVIGATE_TO=-1
    fi
    
}
add-zsh-hook precmd __reset_directory_travel_info