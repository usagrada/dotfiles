# eval
eval $(/opt/homebrew/bin/brew shellenv)
eval "$(starship init zsh)"
eval "$(gh completion -s zsh)"
eval "$(anyenv init -)"
eval $(opam env)
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
eval "$(zoxide init zsh)"
