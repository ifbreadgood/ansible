au BufRead *.yaml,*.yml
  \ if search('# ft: ansible', 'nw') | 
  \ setlocal ft=yaml.ansible | 
  \ endif
