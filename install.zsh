#!/bin/zsh

echo "install zinit"
which zinit >/dev/null 2>&1 && sh -c "$(curl -fsSL https://git.io/zinit-install)" || echo "already exist zinit"

IGNORE_PATTERN="^\.(git)$"

echo "install homebrew"
which brew >/dev/null 2>&1 && ch -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || echo "already exist homebrew"

for dotfile in .??*; do
  [[ $dotfile =~ $IGNORE_PATTERN ]] && continue
  ln -sfnv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

CONFIG_DIR=$(ls config)
for config_dir in $CONFIG_DIR; do
  [[ config_dir =~ $IGNORE_PATTERN ]] && continue
  ln -sfnv "$(pwd)/config/$config_dir" "$HOME/.config/$config_dir"
  ln -sfnv "$(pwd)/config/$config_dir" "$HOME/Library/Preferences/$config_dir"
done
