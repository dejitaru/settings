emulate sh
emulate zsh

eval "$(/opt/homebrew/bin/brew shellenv)"

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
PS1='[$(basename $(dirname "$PWD"))/$(basename "$PWD")]'


COLOR_GIT=$'%F{39}'
COLOR_USR=$'%F{cyan}'
COLOR_DOMAIN=$'%F{green}'
COLOR_DIR=$'%F{226}'
COLOR_PROMPT=$'%F{white}'
setopt PROMPT_SUBST
PROMPT='${COLOR_USR}%n@${COLOR_DOMAIN}%m:${COLOR_DIR}%~${COLOR_GIT}$(parse_git_branch)${COLOR_PROMPT} '

alias python=python3
alias gitfix='git add . && git commit -m "fixed"'
alias phps2='open -a "Google Chrome" http://localhost:9002 && php -S 127.0.0.1:9002'
alias phps3='open -a "Google Chrome" http://localhost:9003 && php -S 127.0.0.1:9003'
alias phps4='open -a "Google Chrome" http://localhost:9004 && php -S 127.0.0.1:9004'

alias phps274='/opt/homebrew/opt/php@7.4/bin/php -S 127.0.0.1:9002'
alias phps281='/opt/homebrew/opt/php@8.1/bin/php -S 127.0.0.1:9002'
alias "7.4"="{ brew unlink php@8.0;brew unlink php@8.1; brew link php@7.4;echo \'export PATH=\"/opt/homebrew/opt/php@7.4/bin:$PATH\"\' >> ~/.zshrc; echo \'export PATH=\"/opt/homebrew/opt/php@7.4/sbin:$PATH\"\' >> ~/.zshrc } &> /dev/null && php -v"
alias "8.0"="{ brew unlink php@7.4; brew unlink php@8.1; brew link php@8.0 --force --overwrite; } &> /dev/null && php -v"
alias "8.1"="{ brew unlink php@7.4;brew unlink php@8.0; brew link php@8.1 --force --overwrite; } &> /dev/null && php -v"
alias "8.2"="{ brew unlink php@7.4;brew unlink php@8.0; brew unlink php@8.1; brew link php@8.2 --force --overwrite; } &> /dev/null && php -v"


alias jen-start='brew services start jenkins-lts'
alias jen-stop='brew services stop jenkins-lts'
alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard'"

alias flushdns="dscacheutil -flushcache"
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete && find . -name 'Thumbs.db' -type f -ls -delete"
alias clear='clear && printf "\e[3J"';

alias cdcode="cd /Users/macmini/Downloads/_MYHDD/DOCUMENTS/08.CODE/CODE"
alias cdplay="cd /Users/macmini/Downloads/_MYHDD/DOCUMENTS/08.CODE/CODE/_playground"
alias onotes="subl /Users/macmini/Downloads/_MYHDD/DOCUMENTS/13.\ NOTES"

alias iplocal="ifconfig -l | xargs -n1 ipconfig getifaddr"
alias ip="curl ifconfig.me"
alias pstorm='open -a /Applications/PhpStorm.app "`pwd`"'

function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

function killport() {
if [ -z "$1" ]; then
    echo "Usage: searchAndDestroy [numeric port identifier]" >&2
    return 1
fi
lsof -i TCP:$1 | awk '/LISTEN/{print $2}' | xargs kill -9
}
# Added by Toolbox App
export PATH="$PATH:/usr/local/bin"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

export PATH="/Users/macmini/.composer/vendor/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/macmini/Library/Python/3.10/bin:$PATH"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion



