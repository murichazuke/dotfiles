set -o vi

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=999999
HISTFILESIZE=999999

# aliases: enable color support of ls and also add handy aliases
alias grep='grep --color=auto --exclude-dir={node_modules,.tox,__pycache__,venv}'
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
export PATH="${PATH}:/opt/embulk"
export PATH="${PATH}:/opt/jp"
export PATH="${PATH}:/opt/buildg"
export GPG_TTY=$(tty)
export EDITOR=vim
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1

# keychain
eval $(keychain --agents ssh,gpg --eval)

# completion
complete -C '/usr/local/bin/aws_completer' aws
eval "$(gh completion -s bash)"
