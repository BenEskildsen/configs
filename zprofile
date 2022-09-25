
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default profile

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# highlight terminal:
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# NOTE:
# This has to be kept in sync with ~/.bashrc in order to work both in
# regular terminals and in vim terminals
# ALSO can't have the export here but must have it there AND
# single quotes, not double quotes
# PS1='\h\w:$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$ '

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '|%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Add GHC 7.10.2 to the PATH, via https://ghcformacosx.github.io/
# export GHC_DOT_APP="/Applications/ghc-7.10.2.app"
# if [ -d "$GHC_DOT_APP" ]; then
#   export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
# fi
