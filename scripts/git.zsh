# Turn on prompt substitution
setopt PROMPT_SUBST

# Load Version Control System Information
autoload -Uz vcs_info

# Format the GIT_INFO_MESSAGE variable
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git:*' formats $'%B%F{'$GIT_REPO_BRANCH_NAME_COLOR'}%b%f %F{red}%u%f%F{green}%c%f%F{red}%a%f%%b'

__update_git_information()
{
    vcs_info
    GIT_INFO_MESSAGE=$vcs_info_msg_0_
}
add-zsh-hook precmd __update_git_information