
# general ---------------------------------------------------------------
alias h='history'
alias ps?='ps aux | grep $1'
alias df='df -kTh'
alias ips='ifconfig | grep "inet "'

alias suod="sudo"
alias ss="sudo -s"

# Process monitoring ----------------------------------------------------
alias pgrep='ps aux | grep '
alias tailf='less -R -N +F'


# Navigation ------------------------------------------------------------
alias ls='ls -lahG'
alias sl='ls -lahG'
alias ..='cd ..'
alias ...='cd ../..'
alias tree='tree -C'
alias mkdir='mkdir -p'

# Find  -----------------------------------------------------------------
alias grep='grep -i --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias f='find . -iname'

# Misc ------------------------------------------------------------------
alias du='du -sh' # Lists folders and files sizes in the current folder
alias top='top -o cpu'
alias stail='tail -f /var/log/system.log'
alias m='more'
alias df='df -h'
alias info="info --vi-keys"

# LAMP ------------------------------------------------------------------

# RUBY -----------------------------------------------------------------
alias irb='irb -f --prompt simple'
alias r="rails"

# GIT ------------------------------------------------------------------
alias gs="git status"
alias gd="git diff"
alias gc="git commit -am"
alias gp="git pull"
alias gch="git checkout"
alias gm="git submodule"
alias gmu="git submodule foreach 'git checkout master && git pull origin master'"
alias gg="git grep -in"

