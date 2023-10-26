#!/usr/bin/env zsh

create_link() {
    local dotfile="$1"
    local destination="$2"
    if [ -e "$destination" ]; then
        rm -rf "$destination"
    fi
    ln -s "$dotfile" "$destination"
}

DOTFILES="$HOME/.dotfiles"

# GIT --------------------------
create_link "$DOTFILES/gitconfig" "$HOME/.gitconfig"

# NVIM -------------------------
create_link "$DOTFILES/nvim" "$HOME/.config/nvim"

# ZSH --------------------------
create_link "$DOTFILES/zsh/rc.zsh" "$HOME/.zshrc"

# VSCodium Settings ------------
create_link "$DOTFILES/vscode/settings.json" "$HOME/.config/VSCodium/User/settings.json"

# VSCodium keybindings ---------
create_link "$DOTFILES/vscode/keybindings.json" "$HOME/.config/VSCodium/User/keybindings.json"

# VSCodium Nvim extension -----
create_link "$DOTFILES/vscode/vscode-nvim.lua" "$HOME/.config/VSCodium/User/vscode-nvim.lua"

