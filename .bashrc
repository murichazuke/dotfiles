set -o vi

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=9999999
HISTFILESIZE=9999999

# aliases: enable color support of ls and also add handy aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# aliases: some more ls aliases
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'

# aliases
alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -iv'
alias tree='tree --charset=ascii'

# Environment variables
export PATH="${PATH}:~/.local/bin"
export PATH="${PATH}:~/.poetry/bin"
export GPG_TTY=$(tty)
export EDITOR=vim
