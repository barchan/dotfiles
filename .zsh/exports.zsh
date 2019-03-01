# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# Increase the maximum number of commands to remember.
export HISTSIZE=2000
export SAVEHIST=2000
export HISTFILE=~/.zsh_history

# Make Sublime Text the default editor.
export EDITOR='subl -w'

# Paths.
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# export PATH="$PATH:`yarn global bin`"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"