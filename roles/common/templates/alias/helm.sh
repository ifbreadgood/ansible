alias h+='cat {{ alias_directory }}/{{ item | basename() }}'

alias h=helm

alias hr='h repo'
alias hrl='hr list'
alias hra='hr add'
alias hrr='hr remove'
alias hru='hr update'

alias hd='h dependency'
alias hdb='hd build'
alias hdl='hd list'
alias hdu='hd update'

alias hs='h search'
alias hsr='h search repo'
alias hsh='h search hub'

alias hun='h uninstall'
alias hup='h upgrade --install --atomic --timeout 3m'
alias hups='h upgrade --install --atomic --timeout 30s'
alias hup5='h upgrade --install --atomic --timeout 5m'
alias hup10='h upgrade --install --atomic --timeout 10m'

alias hl='h ls --all --all-namespaces'

alias hc='h create'

alias hp='h package'

alias hL='h lint'

alias hg='h get'
alias hgv='hg values'
alias hgva='hgv -a'
alias hga='hg all'
alias hgn='hg notes'
alias hgm='hg manifest'
alias hgh='hg hooks'

alias hh='h history'

alias hR='h rollback'

alias hv='h version'

alias hS='h show'
alias hSv='hw values'
alias hSc='hw chart'
alias hSC='hw crds'
alias hSr='hw readme'
alias hSa='hw all'

alias hi='h inspect'
alias hic='hn chart'
alias hir='hn readme'
alias hiv='hn values'
alias hia='hn all'
