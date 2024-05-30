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
alias md='mkdir -p'# Navigation shortcuts
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
alias cp='cp -iv'  # Verbose output for cp
alias mv='mv -iv'  # Verbose output for mv
alias rm='rm -i'  # Interactive delete

# System information
alias df='df -h'  # Human-readable disk usage
alias du='du -h'  # Human-readable directory usage
alias free='free -m'  # Memory usage in MB
alias ps='ps auxf'  # Detailed process status

# Network utilities
alias ping='ping -c 5'  # Ping with 5 packets
alias fastping='ping -c 100 -s 0.2'  # Faster ping with smaller interval
alias ports='sudo netstat -tulanp'  # Show listening ports (requires sudo)

# Git aliases
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin main'
alias gl='git log --oneline --graph --decorate'

# Miscellaneous
alias grep='grep --color=auto'
alias h='history'
alias j='jobs -l'
alias path='echo -e ${PATH//:/\\n}'

# Custom functions for more complex tasks
# Git commit with message prompt
function gcm() {
  git commit -m "$1"
}

# Safer rm command with trash-cli
alias rm='trash-put'

# Shortcut for navigating to specific directories
alias proj='cd ~/projects'

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
