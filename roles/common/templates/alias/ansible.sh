alias a+='cat {{ alias_directory }}/{{ item | basename() }}'

alias an=ansible

alias agg=ansible-galaxy
alias agh='agg --help'
alias agi='agg role init --offline'

alias ad=ansible-doc
alias adl='ansible-doc -l'

alias ap=ansible-playbook
alias apl='ap -i localhosts'
alias aplv='ap -i localhosts --vault-password-file .key'
alias aph='ap --help'

alias av=ansible-vault
alias avh='av --help'
alias ave='av encrypt'
alias avs='av encrypt_string'
alias avd='av decrypt'

avef() {
    ansible-vault encrypt $1 --vault-password-file $2
}

avEf() {
    ansible-vault encrypt_string $1 --vault-password-file $2
}

avdf() {
    ansible-vault decrypt $1 --vault-password-file $2
}

alias aplsh='apl /workspace/personal/local-infra/ansible/install-desktop.yaml --tags shell'