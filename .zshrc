# Imports
source ~/.zplug/init.zsh  

# Alias
alias dfm="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias ls="exa --icons"
alias la="exa -la --icons"
alias tree="exa --tree --icons"

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
