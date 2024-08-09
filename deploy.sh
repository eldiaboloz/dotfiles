#!/usr/bin/env bash

set -e

cd "$(dirname "$0")"

mkdir -pv "$HOME/.config"

links=(
  "/.profile" "$HOME/.profile"
  "/.config/powerline" "$HOME/.config/powerline"
  "/.bashrc" "$HOME/.bashrc"
  "/.tmux.conf" "$HOME/.tmux.conf"
  "/.vimrc" "$HOME/.vimrc"
  "/.zlogin" "$HOME/.zlogin"
  "/.zlogout" "$HOME/.zlogout"
  "/.zshrc" "$HOME/.zshrc"
)

linksC="${#links[@]}"
for ((i = 0; i < $linksC; i += 2)); do
  source="./${links[$i]}"
  target="${links[$i + 1]}"
  if [ -e "$source" ]; then
      ln -svrf "$source" "$target"
  else
    echo "$source does not exist"
  fi
done
