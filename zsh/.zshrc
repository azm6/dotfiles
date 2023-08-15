export PATH="$HOME/.cargo/bin:$HOME/.local/bin:/var/lib/flatpak/exports/bin:$PATH"
export EDITOR='nvim'

export MPD_HOST=127.0.0.1
export MPD_PORT=6601

# source "$HOME/.cargo/env"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="theunraveler"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode zsh-interactive-cd aliases zsh-autosuggestions zsh-syntax-highlighting)

# vi-mode config
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true


source $ZSH/oh-my-zsh.sh
