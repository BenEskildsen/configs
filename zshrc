
# export PS1='\h\w:$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$ '

# zsh:
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '|%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"Z

# bun completions
[ -s "/Users/ben/.bun/_bun" ] && source "/Users/ben/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ruby version manager (to run latest version and not pre-installed one)
eval "$(rbenv init - zsh)"

