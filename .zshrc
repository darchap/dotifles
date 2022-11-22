# Load external files
[[ -f ~/.zsh/plugins.zsh ]] && source ~/.zsh/plugins.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/bindings.zsh ]] && source ~/.zsh/bindings.zsh
[[ -f ~/.zsh/history.zsh ]] && source ~/.zsh/history.zsh
[[ -f ~/.zsh/path.zsh ]] && source ~/.zsh/path.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh


########################################################################################3

autoload -U zmv
autoload -U promptinit && promptinit
autoload -U colors && colors
autoload -Uz compinit && compinit

# Completion.
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'    # Case insensitive tab completion
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)


# Load starship
eval "$(starship init zsh)"
