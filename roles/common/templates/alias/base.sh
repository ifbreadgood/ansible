alias base+='cat {{ alias_directory }}/{{ item | basename() }}'
alias aaa='ansible-playbook -i localhost {{ playbook_dir }}/install-desktop.yaml --tags shell'

alias zz='source ~/.zshrc'
alias bb='source ~/.bashrc'

alias rmf='rm --recursive --force'

alias q=exit

alias ag='alias | grep -i'
alias hh='history | grep -i'

alias watch='watch --color '

alias md='mkdir -p'
mcd() {
  mkdir -p $1 && cd $1
}

alias boot='sudo reboot -h 0'
alias shut='multipass stop --all; aptu; sudo snap refresh; cargo install-update -a; ,bak; sudo shutdown -h 0'
alias start='multipass start --all; /workspace/personal/scripts/start.sh'

alias l="ls --almost-all --classify --human-readable -lt --color"
alias le="less --ignore-case --raw-control-chars --squeeze-blank-lines"

alias px='ps aux'
alias df='df --human-readable'
alias dfi='df --human-readable --inodes'
alias du1='du --max-depth 1 --human-readable ./ | sort --human-numeric-sort'

alias rsync='rsync -av --progress $1 $2'

alias sshp='ssh -o PubkeyAuthentication=no -o PreferredAuthentications=password'

alias diff='diff --suppress-common-lines --side-by-side --report-identical-files'

b64() {
  echo -n $1 | base64
}
b64d() {
  echo -n $1 | base64 -d
}

search_alias() {
  [[ -z $1 ]] && echo no input to search && return 1

  alias=$(alias $1)
  search_dir=/workspace/system/alias
  alias_file=""

  if [[ -z $alias ]]; then # search as plain alias definition
    alias_file=$(grep -l "alias $1[a-zA-Z0-9]*=" ${search_dir}/*)
  fi

  if [[ -z $alias ]]; then # search as function
    alias_file=$(grep -l "$1[a-zA-Z0-9]*()" ${search_dir}/*)
  fi

  if [[ -z $alias ]]; then # make a plain generic search
    alias_file=$(grep -l "$1" ${search_dir}/*)
  fi

  if [[ -n $alias ]]; then
    echo "found $1 as an alias"
    echo "$alias"

  elif [[ -n $alias_file ]]; then
    echo "found $1 in an alias definition file"

    tmp_file=${RANDOM}${RANDOM}
    echo $alias_file > /tmp/$tmp_file

    for file in $(< /tmp/$tmp_file); do
      echo "$file -------------------------------\n"
      cat $file
      echo
    done

    rm /tmp/$tmp_file

  else
    echo "$1 not found as an alias or in any alias file"

  fi
}

alias tt=tmux

alias ,bak='mkdir /workspace/personal/ssh; cp -r /home/$USER/.ssh/* /workspace/personal/ssh/; cp -r /home/$USER/.ssh/.* /workspace/personal/ssh/; \
  rsync -az --delete --exclude target --exclude node_modules --exclude .m2 --exclude .terraform --exclude build --exclude .m2 --exclude .mvn --exclude "*.jar" /workspace/personal /media/$USER/backup/b1/; \
  rsync -az --delete --exclude target --exclude node_modules --exclude .m2 --exclude .terraform --exclude build --exclude .m2 --exclude .mvn --exclude "*.jar" /workspace/work /media/$USER/backup/b1/; \
  rsync -az --delete --exclude target --exclude node_modules --exclude .m2 --exclude .terraform --exclude build --exclude .m2 --exclude .mvn --exclude "*.jar" /workspace/personal /media/$USER/backup/b2/; \
  rsync -az --delete --exclude target --exclude node_modules --exclude .m2 --exclude .terraform --exclude build --exclude .m2 --exclude .mvn --exclude "*.jar" /workspace/work /media/$USER/backup/b2/;'

alias y='yt-dlp -N 8 -r 15M -r 3'

alias anlocal='ansible-playbook /workspace/personal/infrastructure/ansible/install-local.yaml --ask-become-pass --vault-password-file /workspace/personal/infrastructure/secrets/vault-pass'
alias anbase='ansible-playbook /workspace/personal/infrastructure/ansible/install-base.yaml -i /workspace/personal/infrastructure/ansible/inventory.ini --ask-become-pass --vault-password-file /workspace/personal/infrastructure/secrets/vault-pass'
