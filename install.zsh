#!/bin/zsh
# ln -s .zshrc ~/.zshrc
# ln -s .zshenv ~/.zshenv
echo "install zinit"
which zinit >/dev/null 2>&1 && sh -c "$(curl -fsSL https://git.io/zinit-install)" || echo "already exist zinit"

IGNORE_PATTERN="^\.(git)"

for dotfile in .??*; do
  [[ $dotfile =~ $IGNORE_PATTERN ]] && continue
  ln -sfnv "$(pwd)/$dotfile" "$HOME/$dotfile"
done