export CLICOLOR=1

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h:\W\\$ \[$(tput sgr0)\]"

export PATH="$PATH:/usr/local/mysql/bin"

[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="/Users/erik/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$PATH:/Users/erik/.node/bin"