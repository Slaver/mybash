# enable programmable completion features 

# bash completion settings (actually, these are readline settings)
bind "set completion-ignore-case on" #note: bind used instead of sticking these in .inputrc
bind "set show-all-if-ambiguous on"  #show list automatically, without double tab

if [ -f /etc/bash_completion ]; then
        source /etc/bash_completion
fi

if [ -f ~/.bash/completions/z.sh ]; then
        source ~/.bash/completions/z.sh
fi

if [ -f ~/.bash/completions/git-flow-completion ]; then
        source ~/.bash/completions/git-flow-completion
fi

# Turn on advanced bash completion if the file exists
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#  . `brew --prefix`/etc/bash_completion
#fi

complete -C ~/.bash/completions/rake_completion -o default rake
