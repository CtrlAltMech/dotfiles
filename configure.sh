#!/bin/bash

OS_CHECK="$(uname -s)"
MAC="Darwin"
LINUX="Linux"
LINUX_OMZ_PATH="/home/$USER/.oh-my-zsh"
MAC_OMZ_PATH="/Users/$USER/.oh-my-zsh"

# Download zsh syntax highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Check which OS to determine file paths to place dotfiles
if [ "$OS_CHECK" = "$MAC" ]; then
    echo "This is macOS"
    #sed 's/export/g/g' /Users/mech/git_repos/dotfiles
elif [ "$OS_CHECK" = "$LINUX" ]
    echo "This is Linux"
fi



