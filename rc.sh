# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export EDITOR="vim"

# History ----------------------------------------------------------
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTFILESIZE=30000
export HISTIGNORE="ls:cd:[bf]g:exit:..:...:ll:lla"

shopt -s checkwinsize # update the values of LINES and COLUMNS.
shopt -s histappend   # append to the history file, don't overwrite it

hf(){
  grep "$@" ~/.bash_history
}


# Misc -------------------------------------------------------------
shopt -s checkwinsize # After each command, checks the windows size and changes lines and columns
export LC_ALL=en_US.UTF-8

# RVM -----------------------------------------------------------------------------
if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# Colors ----------------------------------------------------------
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1


# Editor ----------------------------------------------------------
export VISUAL=$EDITOR
export SVN_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR

# hostname
HOSTNAME="`[ -f /etc/hostname ] && cat /etc/hostname`"
[ -z "$HOSTNAME" ] && HOSTNAME=$HOST

complete -C rails-complete -o default rails

if [ -f ~/.bash/colors.sh ]; then
    source ~/.bash/colors.sh
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash/aliases.sh, instead of adding them here directly.
if [ -f ~/.bash/aliases.sh ]; then
    source ~/.bash/aliases.sh
fi

if [ -f ~/.bash/prompt.sh ]; then
    source ~/.bash/prompt.sh
fi

if [ -f ~/.bash/compl.sh ]; then
    source ~/.bash/compl.sh
fi

eval `dircolors -b`
alias ls='ls --color=auto'
