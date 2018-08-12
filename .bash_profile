# REFERENCES
# http://davidalger.com/development/bash-completion-on-os-x-with-brew/

eval "$(rbenv init -)"
export PS1="\[\e[38;5;243m\]\u@levelone\[\e[m\] \[\e[38;5;250m\]\w\[\e[m\] \[\e[38;5;115m\]\\$\[\e[m\] "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
