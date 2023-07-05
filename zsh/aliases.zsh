#  _______                  _             _ 
# |__   __|                (_)           | |
#    | | ___ _ __ _ __ ___  _ _ __   __ _| |
#    | |/ _ \ '__| '_ ` _ \| | '_ \ / _` | |
#    | |  __/ |  | | | | | | | | | | (_| | |
#    |_|\___|_| _|_| |_| |_|_|_| |_|\__,_|_|
#         /\   | (_)                        
#        /  \  | |_  __ _ ___  ___  ___     
#       / /\ \ | | |/ _` / __|/ _ \/ __|    
#      / ____ \| | | (_| \__ \  __/\__ \    
#     /_/    \_\_|_|\__,_|___/\___||___/ 
# 
# by mech

### Networking ###

# Gives me my public IP
alias pubip="curl icanhazip.com"


### File editing shortcuts ###

alias zc="nvim ~/git_repos/dotfiles/zsh/.zshrc"
alias vc="nvim ~/git_repos/dotfiles/vim/.vimrc"
alias sz="source ~/git_repos/dotfiles/zsh/.zshrc"

### macOS specific ###

alias fdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

### Misc Functions ###

# Function to use cheat.sh was cheat <some command>
cheat () {
    curl cheat.sh/"$1" >&2
}

# Function to cleanup script file for class
scrubme () {
    cat "$1" | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > "$2"    
}

# Download all wallpapers from post
wpdl () {
    curl $1 | grep --extended-regexp --only-matching "i.4cdn.org/wg/.{21}" | sed "s/s//g" | xargs wget
}

