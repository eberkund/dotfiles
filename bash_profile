# Color the terminal
export CLICOLOR=1
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h:\W\\$ \[$(tput sgr0)\]"

# MySQL
export PATH="$PATH:/usr/local/mysql/bin"

# PHP Composer
export PATH="$PATH:~/.composer/vendor/bin"

# RVM
[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"

# NVM
export NVM_DIR="/Users/erik/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export PATH="$PATH:/Users/erik/.node/bin"

# Clear screen function
function cls {
	osascript -e 'tell application "System Events" to keystroke "k" using command down'
}

# Aliases
alias unrardir='for f in *.rar;do unrar x "$f" "${f%.rar}/";done'