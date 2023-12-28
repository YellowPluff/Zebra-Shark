# Set the history file path
HISTFILE=$HOME/.zsh_history

# Set how many lines of history to keep in memory
HISTSIZE=256

# Set how many lines of history to keep in the history file
SAVEHIST=100000

setopt INC_APPEND_HISTORY       # Write to the history file immediately, not when the shell exits.
setopt HIST_FIND_NO_DUPS        # Do not display a line previously found.
setopt HIST_IGNORE_ALL_DUPS     # Delete old recorded entry if new entry is a duplicate.
setopt HIST_REDUCE_BLANKS       # Remove superfluous blanks before recording entry.
# setopt SHARE_HISTORY          # Share history between sessions. (SHOULD BE DISABLED IF INC_APPEND_HISTORY IS ENABLED)
# setopt EXTENDED_HISTORY       # Write the history file in the ":start:elapsed;command" format.
# setopt BANG_HIST              # Treat the '!' character specially during expansion.
# setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
# setopt HIST_IGNORE_DUPS       # Don't record an entry that was just recorded again.
# setopt HIST_IGNORE_SPACE      # Don't record an entry starting with a space.
# setopt HIST_VERIFY            # Don't execute immediately upon history expansion.
# setopt HIST_BEEP              # Beep when accessing non-existent history.

# Enable matching search of history using up/down arrow keys.
# Match commands that start with what has already been entered into the prompt.
# The up arrow searches backward
# The down arrow searches forward
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end