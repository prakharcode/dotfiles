alias vim=nvim
alias txs='f(){ tmuxinator start "$@";  unset -f f; }; f'
alias git-uf='git ls-files . --exclude-standard --others'
alias la='ls -a'
alias gpm='git push origin master'
alias gpb='git push origin $(git branch --show-current)'
