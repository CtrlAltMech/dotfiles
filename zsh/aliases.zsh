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
    curl -A "curl" cheat.sh/"$1" >&2
}

# Function to cleanup script file for class
scrubme () {
    cat "$1" | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > "$2"    
}


# Downloads all images from 4chan wallpaper board
wpdl () {
    local dir="$2"
    local link="$1"
    local answer
    local pattern='i.4cdn.org/wg/.{21}'
    local link_array=($(curl "$link" 2>/dev/null | grep --extended-regexp --only-matching $pattern | sed "s/s//g")) 
    local link_amount="${#link_array[@]}"
    
    read -p "There are $link_amount images in this link. Do you want to download them? (y/n): " answer
    
    if [[ $answer =~ (y|Y) ]]; then 
        for i in "${link_array[@]}"; do
            echo "$i"
            wget -P "$dir" "$i"
        done
        echo "COMPLETE!"
        exit 0
    elif [[ $answer =~ (n|N) ]]; then
        echo "Exiting..."
        exit 0
    else
        echo "Not a valid option"
        exit 1
    fi
}
