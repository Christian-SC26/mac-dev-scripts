# macOS & Development Zsh Aliases

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Git shortcuts
alias gs="git status -sb"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gco="git checkout"
alias gl="git log --oneline --graph --decorate -n 20"
alias gd="git diff"

# macOS Quick Commands
alias cleanup-ds="find . -type f -name '*.DS_Store' -ls -delete"
alias ports="lsof -iTCP -sTCP:LISTEN -P"
alias showip="curl -s https://ipinfo.io/ip"
