# Use autosuggestion
if [ ! -d "$HOME/.zsh/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
fi
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Use syntax highlighting
if [ ! -f "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
fi
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Use zsh-ssh
if [ ! -f "$HOME/.zsh/zsh-ssh/zsh-ssh.zsh" ]; then
    git clone https://github.com/sunlei/zsh-ssh ~/.zsh/zsh-ssh
fi
source ~/.zsh/zsh-ssh/zsh-ssh.zsh
