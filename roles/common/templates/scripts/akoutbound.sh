#!/usr/bin/env bash

tmux new-session \; \
  split-window -v \; \
  select-pane -t 0 \; send-keys 'tsh ssh ianfritz@outbound-asterisk-use2-1.prod.letsdowonders.io' C-m \; \
  select-pane -t 1 \; send-keys 'tsh ssh ianfritz@outbound-asterisk-use2-2.prod.letsdowonders.io' C-m \; \
  select-pane -t 0 \; \
  next-layout \; \
  next-layout
