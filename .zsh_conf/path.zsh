# c++
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
LDFLAGS+=" -L/opt/homebrew/opt/binutils/lib"
CPPFLAGS+=" -I/opt/homebrew/opt/binutils/include"
LDFLAGS+=" -L/opt/homebrew/lib"

# clang
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# yarn
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.asdf/shims:$PATH"

typeset -U path PATH
path=(
  /opt/homebrew/{bin,sbin}
  $path
  /usr/local/{bin,sbin}
  /usr/{bin,sbin}
)
