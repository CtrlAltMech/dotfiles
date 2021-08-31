# Mech's Aliases

# Misc
alias pubip="curl icanhazip.com"

# File shortcut
alias zc="vim ~/git_repos/dotfiles/.zshrc"
alias vc="vim ~/git_repos/dotfiles/.vimrc"
alias sz="source ~/git_repos/dotfiles/.zshrc"

# Function to use cheat.sh was cheat <some command>
cheat () {
    curl cheat.sh/"$1" >&2
}
