# Path modifications
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$HOME/.local/share/fnm:$PATH"
# export PATH="$PATH:/mnt/c/Windows/System32/"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$HOME/.modular/pkg/packages.modular.com_max/bin:$PATH"
export PATH="$BUN_INSTALL/bin:$PATH"

# Environment variables
export GOPATH="$HOME/xxxxx"
export MODULAR_HOME="$HOME/.modular"
export BUN_INSTALL="$HOME/.local/share/bun"

# History configuration
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$HOME/.zsh_history"
setopt histignorealldups sharehistory

# Shell configuration
bindkey -e  # Use emacs keybindings

# Package/framework integrations
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(fnm env)"

# Juliaup initialization
path=("$HOME/.juliaup/bin" $path)

# Aliases
alias n="nvim"
alias ls="eza --icons=always"
alias ll="eza -l"
alias la="eza -l -a"
alias cd="z"
alias ez="n $HOME/.zshrc"
alias es="n $HOME/.config/starship.toml"
alias sz="source $HOME/.zshrc"
alias sau="sudo apt update && sudo apt upgrade && sudo apt autoremove && brew upgrade"
alias py="python"
alias c="clear"


eval "$(starship init zsh)"
ZLE_RPROMPT_INDENT=0
