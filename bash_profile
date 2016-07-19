# Color the terminal
export CLICOLOR=1
[[ $- =~ i ]] && export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h \[$(tput sgr0)\]$(tput setaf 5)\$(parse_git_branch)$(tput sgr0)\\$ "
#export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h:\W\\$ \[$(tput sgr0)\]"

# MySQL
export PATH="$PATH:/usr/local/mysql/bin"
export ARCHFLAGS="-arch x86_64"

# PHP
export PATH="$PATH:~/.composer/vendor/bin"
export PATH="$(brew --prefix php70)/bin:$PATH" # Also change /etc/apache2

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:~/.rvm/bin"

# Clear screen function
function clear {
	osascript -e 'tell application "System Events" to keystroke "k" using command down'
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

# Aliases
alias unrardir='for f in *.rar;do unrar x "$f" "${f%.rar}/";done'
alias shrinkdir='for d in *.jpg;do mogrify -strip -resize 1000x1000 -quality 85% "$d*JPG";done'
alias tidydir='tidy -i -q -m -w -c -utf8 0 *.html'
alias ls='ls -h'
alias phpunit="./vendor/bin/phpunit"
alias art="php artisan"
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'