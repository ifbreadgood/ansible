alias apt+='cat {{ alias_directory }}/{{ item | basename() }}'

alias apts='sudo apt search'
alias apti='sudo apt-get install -y'
alias aptu='sudo apt-get update -y \
        && sudo apt-get upgrade -y \
        && sudo apt-get autoremove -y \
        && sudo apt-get autoclean'
alias aptp='sudo apt-get purge'