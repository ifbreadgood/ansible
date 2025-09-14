alias sys+='cat {{ alias_directory }}/{{ item | basename() }}'

alias sys='sudo systemctl'
alias syss='sudo systemctl status'
alias sysa='sudo systemctl start'
alias syso='sudo systemctl stop'
alias sysr='sudo systemctl reload'
alias syse='sudo systemctl enable'
alias sysd='sudo systemctl disable'