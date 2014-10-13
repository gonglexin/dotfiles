#!/usr/bin/env bash

echo ''
echo 'Install configuration files ......'

link_file () {
  ln -s "$1" "$2"
  echo "linked $1 to $2"
}

install_dotfiles () {
  for src in $(find "$(pwd)" -name '*.symlink')
  do
    dst="$HOME/.$(basename "${src%.*}")"
    link_file "$src" "$dst"
  done
}

install_dotfiles

echo ''
echo 'Done!'
