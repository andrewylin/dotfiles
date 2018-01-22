export PS1="\[\e[36m\]\u:\[\e[32m\]\W\[\e[m\]\$ "
			    #cyan         green       default
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
# export PS1="\e[0;36m\u:\e[m\e[0;32m\W\e[m$"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'
alias ll='ls -l'

set -o vi

PYTHONPATH="/Users/andrewlin/PythonModules:$PYTHONPATH"
export PYTHONPATH

export PATH="$PATH:/Users/andrewlin/Library/Python/2.7/bin"

#if [ -f `brew --prefix`/etc/bash_completion ]; then
#    . `brew --prefix`/etc/bash_completion
#fi
