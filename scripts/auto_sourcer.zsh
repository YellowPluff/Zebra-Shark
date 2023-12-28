# Save off the word count of the current prompt.zsh file
promptWC=$(wc -c $installPath/prompt.zsh)

# Save off the word count of the current aliases.zsh file
aliasesWC=$(wc -c $installPath/aliases.zsh)

# Save off the word count of the current functions.zsh file
functionsWC=$(wc -c $installPath/functions.zsh)

__check_and_source_user_files()
{
    # Check the word count of the prompt.zsh file
    # If it changed, alert the user, source it, and update the value
    updatedPromptWC=$(wc -c $installPath/prompt.zsh)
    if [[ "$promptWC" != "$updatedPromptWC" ]];
    then
        echo "Detected a change in $installPath/prompt.zsh. Auto-sourcing new prompt file."
        source $installPath/prompt.zsh
        promptWC=$updatedPromptWC
    fi

    # Check the word count of the aliases.zsh file
    # If it changed, alert the user, source it, and update the value
    updatedAliasesWC=$(wc -c $installPath/aliases.zsh)
    if [[ "$aliasesWC" != "$updatedAliasesWC" ]];
    then
        echo "Detected a change in $installPath/aliases.zsh. Auto-sourcing new aliases file."
        source $installPath/aliases.zsh
        aliasesWC=$updatedAliasesWC
    fi

    # Check the word count of the functions.zsh file
    # If it changed, alert the user, source it, and update the value
    updatedFunctionsWC=$(wc -c $installPath/functions.zsh)
    if [[ "$functionsWC" != "$updatedFunctionsWC" ]];
    then
        echo "Detected a change in $installPath/functions.zsh. Auto-sourcing new functions file."
        source $installPath/functions.zsh
        functionsWC=$updatedFunctionsWC
    fi    
}
add-zsh-hook precmd __check_and_source_user_files