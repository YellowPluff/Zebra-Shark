# This logic captures the time when a user runs a command
__start_command_timer()
{
    command_run_time_timer=$(date +%s)
}
add-zsh-hook preexec __start_command_timer

# This logic captures the time when a user command finishes, then sets
# the right prompt with the run time.
__set_runtime_right_prompt()
{
    if [ $command_run_time_timer ];
    then
        local now=$(date +%s)
        local elapsed=$((now-command_run_time_timer))
        
        local hours=$(( elapsed / 60 / 60 % 24 ))
        local minutes=$(( elapsed / 60 % 60 ))
        local seconds=$(( elapsed % 60 ))

        # If the last command took longer than 2 seconds, display it to the user
        if (( $elapsed >= 2 ));
        then
            export RPROMPT="%F{green}%B${hours}h ${minutes}m ${seconds}s%b%f"
        else
            export RPROMPT=""
        fi
        
        unset command_run_time_timer
    fi
}
add-zsh-hook precmd __set_runtime_right_prompt
