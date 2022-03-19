# golang
export GOENV_DISABLE_GOPATH=1
export GOPATH="$HOME/go"
export PATH="$HOME/go/bin:$PATH"

# c++
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
# clang
# export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# yarn
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.asdf/shims:$PATH"
export PATH="$(find ~/.asdf -name bin | xargs | sed -e 's/ /:/g'):$PATH"

typeset -U path PATH
path=(
  /opt/homebrew/{bin,sbin}
  $path
  /usr/local/{bin,sbin}
  /usr/{bin,sbin}
)
