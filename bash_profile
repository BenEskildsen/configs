
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default profile

# highlight terminal:
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# NOTE:
# This has to be kept in sync with ~/.bashrc in order to work both in
# regular terminals and in vim terminals
# ALSO can't have the export here but must have it there AND
# single quotes, not double quotes
PS1='\h\w:$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$ '

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
