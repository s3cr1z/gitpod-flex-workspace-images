# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  history
  sudo
)

source $ZSH/oh-my-zsh.sh

# Security tool aliases
alias scan="sudo nmap -v -sV -sC -O"
alias pscan="sudo nmap -v -Pn"
alias http-serve="python3 -m http.server"
alias pyvenv="python3 -m venv .venv && source .venv/bin/activate"

# Always work in virtual environment when available
if [ -d ".venv" ]; then
  source .venv/bin/activate
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
