# main
setopt auto_cd
setopt correct
setopt glob_complete
setopt numeric_glob_sort
setopt pushd_to_home

# history
setopt append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt share_history

# key bindings
bindkey '^[^[[C' forward-word
bindkey '^[^[[D' backward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char