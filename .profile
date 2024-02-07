alias vim=nvim
alias txs='f(){ tmuxinator start "$@";  unset -f f; }; f'
alias la='ls -a'

# Git aliases
alias gpm='git push origin master'
alias gpcb='git push origin $(git branch --show-current)'
alias gituf='git ls-files . --exclude-standard --others'
alias gitl='git log'
alias gitd='git diff'
