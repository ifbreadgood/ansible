#!/usr/bin/env bash

ZSH_THEME="fino-time"
source "$ZSH/oh-my-zsh.sh"

alias a=alias
a e=export

e TF_PLUGIN_CACHE_DIR="{{ system_directory }}/hashicorp"
mkdir -p "$TF_PLUGIN_CACHE_DIR"

e LOCAL_BIN="{{ lookup('env', 'HOME') }}/.local/bin"
e YARN_BIN="{{ lookup('env', 'HOME') }}/.yarn/bin"
e CARGO_BIN="{{ lookup('env', 'HOME') }}/.cargo/bin"
e MVN_BIN="{{ lookup('env', 'HOME') }}/Downloads/mvn/bin"
e GO_BIN="/usr/local/go/bin"
e NVM_DIR="$HOME/.nvm"
e BASE_PATH="$PATH:$LOCAL_BIN:$YARN_BIN:$CARGO_BIN:$MVN_BIN:$GO_BIN:$NVM_BIN:{{ script_directory }}"
e PATH="$BASE_PATH"
e VISUAL=nvim
e EDITOR=nvim

source refresh_env