alias vim=nvim
alias txs='f(){ tmuxinator start "$@";  unset -f f; }; f'
alias la='ls -a'

# Git aliases
alias gpm='git push origin master'
alias gpcb='git push origin $(git branch --show-current)'
alias gcb='git checkout'
alias gcnb='git checkout -b'
alias guf='git ls-files . --exclude-standard --others'
alias gituf='git ls-files . --exclude-standard --others'
alias gitl='git log'
alias gitd='git diff'
alias gplom='git pull origin master'

# Docker alias
alias doco='docker-compose'
alias docou='docker-compose up -d'
alias docod='docker-compose down'


# fzf directory
alias f=fcd
alias vfz='vim "$(fd | fzf)"'
