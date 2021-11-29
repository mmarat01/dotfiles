###################################################################################################
#
##### oh my zsh stuff #####
#
##################################################################################################

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mijaelmaratuechseminario/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="minimal"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

DISABLE_LS_COLORS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

##############################################################################################
#
#### personal stuff #####
#
##############################################################################################
alias ls="ls -lH"
cl () {
  cd $1
  ls 
}
alias vi="vim"
alias lsa="ls -a"
alias home="cl ~"
alias prev="cl -"
alias zrc="vim ~/.zshrc"
alias srcz="source ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias srcvim="source ~/.vimrc"
alias clr="clear"
alias pics="cl ~/Pictures"
alias docs="cl ~/Documents"
alias desk="cl ~/Desktop"
alias down="cl ~/Downloads"
alias write="cl ~/Documents/writing"
alias notes="cl ~/Documents/writing/notes"
alias journal="cl ~/Documents/writing/journal"
alias ..="cd .."

alias pyserv="python3 -m http.server"
alias codes="cl ~/Documents/codes"
# others
export PATH="$HOME/.bin:$PATH"
export PATH="/opt/homebrew/opt/unzip/bin:$PATH"
eval "$(rbenv init - zsh)"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
alias python=/opt/homebrew/bin/python3
alias pip=/opt/homebrew/bin/pip3

weather () {
  curl "https://wttr.in/{$1-Somerville}"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

