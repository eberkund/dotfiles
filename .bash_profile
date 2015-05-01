export PATH="$PATH:/usr/local/mysql/bin"

export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:/usr/local/sbin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CLICOLOR=1

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h:\W\\$ \[$(tput sgr0)\]"