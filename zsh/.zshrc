# Mech's .zshrc file
#
#  _____     ______     ______            ______     ______     __  __     ______     ______    
# /\  __-.  /\  __ \   /\__  _\          /\___  \   /\  ___\   /\ \_\ \   /\  == \   /\  ___\   
# \ \ \/\ \ \ \ \/\ \  \/_/\ \/          \/_/  /__  \ \___  \  \ \  __ \  \ \  __<   \ \ \____  
#  \ \____-  \ \_____\    \ \_\            /\_____\  \/\_____\  \ \_\ \_\  \ \_\ \_\  \ \_____\ 
#   \/____/   \/_____/     \/_/            \/_____/   \/_____/   \/_/\/_/   \/_/ /_/   \/_____/
#

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Checks which OS is running to specify the correct path
if [[ "$(uname -s)" == "Linux" ]]; then
  # Path to oh-my-zsh installation on Linux system
  export ZSH="/home/$USER/.oh-my-zsh"
  
  # Source zsh-syntax-highlighting plugin on Linux
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

elif [[ "$(uname -s)" == "Darwin" ]]; then
  # Path to oh-my-zsh installation macOS
  export ZSH="/Users/$USER/.oh-my-zsh"

  # Source zsh-syntax-highlighting plugin on macOS
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ZSH theme https://github.com/romkatv/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Use case sensitive completion
CASE_SENSITIVE="true"

# Disable command correction as it gets on my nerves
ENABLE_CORRECTION="false"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins go here
# Standard plugins added to $ZSH_CUSTOM/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(  
zsh-autosuggestions # Suggests completions as you type
extract # Type extract <file> pretty basic 
copypath # Copies the current directory path into the buffer for use later
nmap # Nmap port scanner
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Source ZSH file
source $ZSH/oh-my-zsh.sh

# Needed for pyenv to add it to my path
export PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Adding scripts directory
export PATH="$HOME/scripts:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Specifying theme for bat (https://github.com/sharkdp/bat)
export BAT_THEME="Dracula"
