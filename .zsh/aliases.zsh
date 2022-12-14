# Shortcuts
alias c='clear'
alias reloadshell='source ~/.zshrc'
alias ll='ls -AhlFo --color --group-directories-first'
alias findsymlinks='find . -type l'
alias findhere='find . -print | grep -i'
alias grubup="sudo update-grub"
alias tarnow='tar -acf'
alias untar='tar -zxvf'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
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

# Vscode
alias code='codium'

#Git
alias undolastcommit='git reset --hard HEAD~1 && git push origin -f'
alias filesbeforecommit='git diff --name-only --staged'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gdiff='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
alias gstatus='git status -sb'