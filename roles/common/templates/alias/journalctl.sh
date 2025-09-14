alias jc+='cat {{ alias_directory }}/{{ item | basename() }}'

alias jc='journalctl'
alias jcb='journalctl --boot'
alias jcd='journalctl --dmesg'
alias jcs='journalctl --system'
alias jcu='journalctl --user'
alias jcfu='journalctl --follow --unit'
alias jcdu='journalctl --disk-usage'
alias jcr='journalctl --rotate'
alias jcg='journalctl --grep'

function jcug() {
    journalctl --user $1 --grep $2
}