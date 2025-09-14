alias r+='cat {{ alias_directory }}/{{ item | basename() }}'

alias cg=cargo

alias cgr='cg run'

alias cgu='cg update'

alias cgb='cg build'
alias cgbr='cgb --release'

function cgt() {
    cargo test $1 -- --show-output
}
function cgtf() {
    cargo test --test $1 -- --show-output
}
function cgti() {
    cargo test $1 -- --ignored
}

alias cgn='cg new'
alias cgnl='cgn --lib'

alias cgc='cg clippy'

alias cgf='cg fmt'

alias cgwf='cg watch -x fmt'
alias cgwr='cg watch -x run'

alias cgi='cg install'

alias cgin='cg init'

alias cgun='cg uninstall'

alias cgu='cg update'

alias cgs='cg search'
