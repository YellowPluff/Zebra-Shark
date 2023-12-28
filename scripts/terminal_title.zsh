# This logic sets the title of the terminal.
# If the function is called from preexec then it'll set the title to the running command.
# If the function is called from precmd then it'll set the title to the server name.
__set_terminal_title() {
    if [ $1 ];
    then
        echo -ne "\e]2;$HOST: $1 \a"
    else
        echo -ne "\e]2;$HOST\a"
    fi
}
add-zsh-hook preexec __set_terminal_title
add-zsh-hook precmd __set_terminal_title