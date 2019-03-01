# Directories.
alias dl='cd ~/Downloads'
alias docs='cd ~/Documents'
alias desk='cd ~/Desktop'
alias proj='cd ~/Projects'
alias sites='cd ~/Sites'

# Easy navigation.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias ls='ls -aFGhl'
alias tree='tree -C -N'

# Download file and save it with filename of remote file.
# alias get='curl -# -O -L'
alias get='aria2c'

# Shortcuts.
alias c='clear'
alias zshrc='nano ~/.zshrc'
alias st='subl $@'

# Show my IP address.
alias myip='curl 2ip.io'

# Get week number.
alias week='date +%V'

# Recursively delete those annoying .DS_Store files.
alias rmds='find . -type f -name ".DS_Store" -print0 | xargs -0 rm -rf'

# Verify checksums in the sfv file.
alias sfv='cksfv -f *.sfv'

# Quickly reload .zshrc to enable changes.
alias reload='source ~/.zshrc'