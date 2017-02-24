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

# Recursively delete those annoying .DS_Store files.
alias rmds='find . -type f -name ".DS_Store" -print0 | xargs -0 rm -rf'

# Verify checksums in the sfv file.
alias sfv='cksfv -f *.sfv'

# Create RAR archive with random name.
alias mp='rar a -ep1 -m0 -t $(openssl rand -hex 8) "$1"'

# Quickly reload .zshrc to enable changes.
alias reload='source ~/.zshrc'