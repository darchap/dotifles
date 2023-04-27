# Shortcuts
alias reloadshell='source ~/.zshrc'
alias aliases='cat ~/.zsh/aliases.zsh | grep alias'
alias c='clear'
alias ll='ls -AhlFo --color --group-directories-first'
alias findsymlinks='find . -type l'
alias findhere='find . -print | grep -i'
alias tarnow='tar -acf'
alias untar='tar -zxvf'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get week number
alias week='date +%V'

# IP
alias ip="curl -s ifconfig.me"

# Git
alias undolastcommit='git reset --hard HEAD~1 && git push origin -f'
alias filesbeforecommit='git diff --name-only --staged'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gdiff='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
alias gstatus='git status -sb'
