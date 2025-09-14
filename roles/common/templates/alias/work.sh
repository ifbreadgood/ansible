renew="docker container run --name renew -v /workspace/system/:/root/"

alias azl='az login'

function aks {
  az aks get-credentials --resource-group $1 --name $2 --overwrite-existing
  kubelogin convert-kubeconfig -l azurecli
}

alias aksp='aks common-kubernetes-e2-staging common-kubernetes-e2-staging-cluster'
alias aksf='aks common-kubernetes-cn-staging-failover common-kubernetes-cn-staging-failover-cluster'


alias ald='aws sso login'
alias ald='aws sso login --use-device-code'
alias ai='aws sts get-caller-identity'

alias wdnr='export AWS_PROFILE=dnr'
alias wdnp='export AWS_PROFILE=dnp'
alias wdna='export AWS_PROFILE=dna'

alias wdlr='export AWS_PROFILE=dlr'
alias wdlp='export AWS_PROFILE=dlp'
alias wdla='export AWS_PROFILE=dla'

alias wpr='export AWS_PROFILE=pr'
alias wpp='export AWS_PROFILE=pp'
alias wpa='export AWS_PROFILE=pa'

alias wsr='export AWS_PROFILE=sr'
alias wsp='export AWS_PROFILE=sp'
alias wsa='export AWS_PROFILE=sa'

alias weu1='export AWS_REGION=us-east-1'
alias weu2='export AWS_REGION=us-east-2'
alias wap1='export AWS_REGION=ap-southeast-1'

alias eks='alias | grep ^eks'
alias eksdl='dnp; eu2; aws eks update-kubeconfig --name dev-legacy-us-east-2'
alias eksdg='dnp; eu2; aws eks update-kubeconfig --name dev-us-east-2'
alias eksda='dnp; ap1; aws eks update-kubeconfig --name dev-ap-southeast-1'
alias eksdc='dnp; eu2; aws eks update-kubeconfig --name ci-us-east-2'
alias ekssr='sp; eu2; aws eks update-kubeconfig --name rancher'
alias eksss='sp; eu2; aws eks update-kubeconfig --name shared-services'
alias ekspl='pp; eu2; aws eks update-kubeconfig --name prod-legacy-us-east-2'
alias ekspg='pp; eu2; aws eks update-kubeconfig --name prod-us-east-2'
alias ekspga='pp; ap1; aws eks update-kubeconfig --name prod-ap-southeast-1'