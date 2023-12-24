# DIRECTORIES ------------------
alias down="/home/bruno/Downloads"
alias docs="/home/bruno/Documentos"
alias work="/home/bruno/workspace"
alias dotfiles="/home/bruno/.dotfiles"

# APPS -------------------------
alias nv="nvim"
alias py="python3"
alias python="python3"
alias pyvenv="python3 -m venv .venv && source .venv/bin/activate"

# GIT --------------------------
alias ga="git add"
alias gc="git commit -m"
alias gca="git commit --amend -m"
alias gl="git log"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gpl="git pull"
alias gf="git fetch"

# SEARCH AND OPEN FILES WITH FZF
alias f="fzf | xargs -r xdg-open" 
