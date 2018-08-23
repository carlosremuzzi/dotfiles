#!/usr/bin/env sh

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

set -e

cp ${DOTFILES_ROOT}/.Xresources $HOME/.Xresources
cp ${DOTFILES_ROOT}/.xbindkeysrc $HOME/.xbindkeysrc
cp ${DOTFILES_ROOT}/.xinitrc $HOME/.xinitrc
cp ${DOTFILES_ROOT}/.vimrc $HOME/.vimrc
cp ${DOTFILES_ROOT}/.zshrc $HOME/.zshrc
cp ${DOTFILES_ROOT}/.tmux.conf $HOME/.tmux.conf
cp ${DOTFILES_ROOT}/.config/i3/config $HOME/.config/i3/config
cp ${DOTFILES_ROOT}/.config/polybar/config $HOME/.config/polybar/config
