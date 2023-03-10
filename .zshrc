# Imports
source ~/.zplug/init.zsh  
source ~/.mocha-zsh-syntax-highlighting.zsh  

# Alias
alias dfm="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias ls="exa --icons"
alias la="exa -la --icons"
alias tree="exa --tree --icons"
alias vim="nvim"

# Plugins
zplug romkatv/powerlevel10k, as:theme, depth:1
zplug zsh-users/zsh-syntax-highlighting, defer:2
zplug zsh-users/zsh-autosuggestions

# Check Plugins
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load
zplug load
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
macchina

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:/home/kurama/.spicetify
