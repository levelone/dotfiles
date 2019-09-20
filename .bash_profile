# REFERENCES
# http://davidalger.com/development/bash-completion-on-os-x-with-brew/
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PS1="\[\e[38;5;243m\]\u@levelone\[\e[m\] \[\e[38;5;250m\]\w\[\e[m\] \[\e[38;5;115m\]\\$\[\e[m\] "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# https://elixir-lang.org/install.html#setting-path-environment-variable
# export PATH="$PATH:/usr/local/Cellar/elixir/1.7.4/bin"

alias tanda-ssh="ssh <ip_address>"
alias tanda-sync="entangler master . <ip_address>:/home/ruby/core/repo -i '/^\.git\/[^r][^\/]+(?:\/[^\/]+)+/' -i '/^\.git\/.*\.lock/' -i'log' -i 'tmp' -i '.idea' -i 'node_modules'"
alias tanda-server='ssh <ip_address> "bash -lc '/home/deployer/server/start'"'
alias tanda-kill='ssh <ip_address> "bash -lc '/home/deployer/server/kill_server'"'
alias tanda-worker='ssh <ip_address> "bash -lc '/home/deployer/server/worker'"'
alias tanda-console='ssh <ip_address> "bash -lc '/home/deployer/server/console'"'
alias tanda-bundle='ssh <ip_address> "bash -lc '/home/deployer/server/bundle'"'
alias tanda-upload-images='ssh <ip_address> "bash -lc '/home/deployer/server/upload_images'"'
alias tanda-test='ssh <ip_address> "bash -lc '/home/deployer/server/test'"'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
