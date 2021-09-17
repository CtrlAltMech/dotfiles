# Mech's .zshrc file
#
#  _____     ______     ______            ______     ______     __  __     ______     ______    
# /\  __-.  /\  __ \   /\__  _\          /\___  \   /\  ___\   /\ \_\ \   /\  == \   /\  ___\   
# \ \ \/\ \ \ \ \/\ \  \/_/\ \/          \/_/  /__  \ \___  \  \ \  __ \  \ \  __<   \ \ \____  
#  \ \____-  \ \_____\    \ \_\            /\_____\  \/\_____\  \ \_\ \_\  \ \_\ \_\  \ \_____\ 
#   \/____/   \/_____/     \/_/            \/_____/   \/_____/   \/_/\/_/   \/_/ /_/   \/_____/
#

# Path to oh-my-zsh installation on Linux system
#export ZSH="/home/$USER/.oh-my-zsh"

# Path to oh-my-zsh installation macOS
export ZSH="/Users/$USER/.oh-my-zsh"

# ZSH theme
ZSH_THEME="sorin"

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
web-search # Enter a web search from the CLI
copydir # Copies the current directory path into the buffer for use later
nmap # Nmap port scanner
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Source ZSH file
source $ZSH/oh-my-zsh.sh

# Source zsh-syntax-highlighting plugin on macOS
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source zsh-syntax-highlighting plugin on Linux
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Needed for pyenv to add it to my path
export PATH="$HOME/.pyenv/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
