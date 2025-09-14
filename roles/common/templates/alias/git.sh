alias g+='cat {{ alias_directory }}/{{ item | basename() }}'

alias g='git'

alias ga='g add'

alias gpl='g pull'
alias gplo='g pull origin'

alias gps='g push'
alias gpso='g push origin'
alias gpsoM='g push origin master'
alias gpsom='g push origin main'

alias gs='g status'
alias gst='g stash'
alias gstp='g stash pop'

alias gcM='g commit -S -m'
alias gcm='g commit -m'
alias gcma='g commit --amend -m'

alias gch='g checkout'
alias gchb='g checkout -b'

alias gcf='g config'
alias gcfl='g config --list --show-scope --show-origin'
alias gcfn='g config user.name'
alias gcfe='g config user.email'
alias gcfc='gcfn ibacangan && gcfe i.bacangan@gmail.com'
alias gcfua='gcfn techtrials-github-admin  && gcfe techtrials+github-admin@pm.me && git config gpg.format ssh && git config user.signingkey /home/u/.ssh/randombuild && git config commit.gpgsign true'

alias gcl='g clone'

alias grh='g reset --hard'

alias grs='g restore --staged'

alias gd='g diff'
alias gds='g diff --staged'
alias gdc='g diff --cached'

alias gl='g log --graph --abbrev-commit'

alias gi='g init && gcfc'

alias gw='g switch'
alias gwc='g switch -c'
