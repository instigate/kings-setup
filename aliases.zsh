# My own Aliases
alias webserver="ipconfig getifaddr en0 && python -m SimpleHTTPServer 8000"
alias ssh.pihole="ssh pi@10.0.0.4"
alias ssh.homebridge="ssh -i ~/.ssh/id_rsa edward@10.0.0.2"

record-adb() {
    if [ "$1" != "" ]
    then
        echo adb shell screenrecord /sdcard/$1.mp4
    else
        echo adb shell screenrecord /sdcard/screenshot.mp4
    fi
}
sf.case() {
    if [ "$1" != "" ]
    then
        open "https://zebra.my.salesforce.com/_ui/search/ui/UnifiedSearchResults?searchType=2&str=$1" -a /Applications/Google\ Chrome.app
    else
        echo "send casenumer as a parameter"
    fi
}

alias sidekikr="cd /Users/edward/Documents/Development/JS/vue/sidekikr"


#--------------------------------------------------------- end my own and begin loaned Aliases -------------------------------------

# From the internet Aliases
# Source Reload
alias reload.zsh="source ~/.zshrc"
alias reload.profile="source ~/.bash_profile"
alias reload.term="source ~/.bash_profile && source ~/.zshrc"

# cd
alias ..="cd .."

# ls
#alias ll="ls -AlhG"
#alias cll="/usr/local/bin/cll `pwd`"

# tar
#alias tarr="tar -pczf $1 $2"
#alias untarr="tar -pxzf $1"
#alias starr="sudo tar -pczf $1 $2"

# Paths
#alias go.webroot="/Applications/XAMPP/xamppfiles/htdocs"
#alias go.sites="~/Sites"

# Mac
alias mac.showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias mac.hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# Docker
#alias docker.cleancontainer="docker ps -a -q | xargs docker rm"
#alias docker.cleanimage="docker images --filter dangling=true -q | xargs docker rmi"

# Find & Delete all ".DS_Store" files (recursive)
alias delete.ds="find . -name '.DS_Store' -type f -print -delete"

# Functions - My perfected ls command!
#cll() { ls -AlhG "$@" | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}' | cut -c 1-5,21-; }
