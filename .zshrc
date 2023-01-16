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
