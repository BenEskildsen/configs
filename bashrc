
export PS1='\h\w:$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$ '
