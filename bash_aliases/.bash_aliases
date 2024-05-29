
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

# Listing files and directories
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'

# Directory management
alias md='mkdir -p'
alias rd='rmdir'

# File management
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# System information
alias df='df -h'
alias du='du -h'
alias free='free -m'
alias ps='ps auxf'

# Network utilities
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'

# Git aliases
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline'

# Miscellaneous
alias grep='grep --color=auto'
alias h='history'
alias j='jobs -l'
alias path='echo -e ${PATH//:/\\n}'
