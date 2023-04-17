[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/wsl2fix.zsh ]] && source ~/.zsh/wsl2fix.zsh
[[ -f ~/.zsh/goto.zsh ]] && source ~/.zsh/goto.zsh

# Load Starship
eval "$(starship init zsh)"

# Load colors (for exa)
export LS_COLORS="$(vivid generate molokai)"
export EXA_COLORS="da=32"

export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/c/Users/wurst"
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export VAGRANT_DEFAULT_PROVIDER="hyperv"
