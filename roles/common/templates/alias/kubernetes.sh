alias k+='cat {{ alias_directory }}/{{ item | basename() }}'

alias k='kubectl'

alias ka='k annotate'

alias kaf='k apply -f'
alias kad='k apply -d'

function kar {
  if [ "$1" -eq "" ]; then
    k api-resources
  else
    k api-resources | grep -i $1
  fi
}

alias kC='k create'

alias kd='k describe'
alias kdj='k describe job'
alias kdcj='k describe cronjob'
alias kdcr='k describe clusterrole'
alias kdcrb='k describe clusterrolebinding'
alias kdr='k describe role'
alias kdrb='k describe rolebinding'
alias kdd='k describe deployment'
alias kdn='k describe nodes'
alias kdN='k describe namespace'
alias kdp='k describe pods'
alias kds='k describe service'
alias kdS='k describe secrets'
alias kdss='k describe statefulsets'
alias kde='k describe endpoints'
alias kdi='k describe ingress'
alias kdr='k describe replicasets'
alias kdcm='k describe configmap'
alias kdt='k describe statefulsets'

alias ke='k explain'

alias kg='k get'
alias kga='k get all -o wide'
alias kgaa='k get all -o wide --all-namespaces'
alias kge='k get endpoints -o wide'
alias kgd='k get deployments -o wide'
alias kgds='k get deployments -o wide --selector'
alias kgt='k get statefulsets -o wide'
alias kgts='k get statefulsets -o wide --selector'
alias kgn='k get nodes -o wide'
alias kgns='k get namespace'
alias kgp='k get pods -o wide --show-labels'
alias kgps='k get pods -o wide --show-labels --selector'
alias kgpn='k get pods -o wide --show-labels --namespace'
alias kgs='k get services -o wide'
alias kgS='k get secrets -o json'
alias kgi='k get ingress'
alias kgc='k get configmap'

alias kh='k help'

function kl {
  k logs --follow --tail 50 $(k get pods -o name | grep $1 | head -n1) $([[ $# -eq 2 ]] && echo "--container $2")
}
function kln {
  k logs --namespace $1 --follow --tail 50 $(k get pods --output name --namespace $1 | grep $2 | head -n1) $([[ $# -eq 3 ]] && echo "--container $3")
}

alias krf='k replace -f'

alias kp='k port-forward'
function kps {
  kp service/$1
}

alias ktn='k top node'
alias ktp='k top pod'

alias kD='k delete'
alias kDl='k delete --selector'
alias kDf='k delete -f'
alias kDa='k delete --all'

alias kx='k exec'
alias kxi='k exec -it'

alias kc='k config'
alias kcdc='kc delete-cluster'
alias kcdx='kc delete-context'
alias kcdu='kc delete-user'
alias kcs='kc set-context'
alias kcsn='kc set-context --current --namespace'
#alias kcux='kc use-context'
alias kcv='kc view'
function kcvx {
  kcv -ojson | jq '{ context: .contexts, current: "current-context"}'
}
function kcvc {
  kcv -ojson | jq '.clusters'
}
function kcvu {
  kcv -ojson | jq '.users'
}

function kcux {
  if [[ $1 == "" ]]; then
    l /workspace/kube-contexts
  else
    kube_file="/tmp/$(date +%s)"
    cp "/workspace/kube-contexts/${1}" "$kube_file"
    export KUBECONFIG=$kube_file
  fi
}

source <(kubectl completion zsh)
