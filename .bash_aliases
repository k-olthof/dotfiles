# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  eval "`dircolors -b`"
  alias ls='ls --color=auto -GF'
  alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
else
  alias ls='ls -GF'
fi

# A BUNCH OF ALIASES I LIKE
alias ll='ls -lG'
alias la='ls -laG'
alias ..='cd ..'
alias s='ssh'
alias tmux="TERM=screen-256color-bce tmux"
