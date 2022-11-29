# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="quikzens"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
	git
	z zsh-autosuggestions
	jsontools
	copyfile
	golang
)

source $ZSH/oh-my-zsh.sh

# Tilix VTE Configuration
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# Path
export GOPATH=/home/febrianamir/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/febrianamir/.local/bin

# Alias
alias bat='batcat --paging=never'
alias vim='nvim'
alias copy='xclip -sel clip'

# Alias for Config
alias nvimconf='vim ~/.config/nvim'
alias alacrittyconf='vim ~/.config/alacritty/alacritty.yml'
alias zshconf='vim ~/.zshrc'
alias tmuxconf='vim ~/.tmux.conf'

fpath+=${ZDOTDIR:-~}/.zsh_functions

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
