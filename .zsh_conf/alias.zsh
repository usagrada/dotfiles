# alias
alias vi=nvim
alias vim=nvim
alias insider='code-insiders'

if [[ $(command -v satysfi-fmt) ]]; then
  alias satysfi-fmt='satysfi-fmt -i 2'
fi

if [[ $(command -v exa) ]]; then
  alias e='exa --git'
  alias l=e
  alias ls='exa --icons --git'
  alias ea='exa -a --icons --git'
  alias la=ea
  alias ee='exa -aahl --icons --git'
  alias ll=ee
  alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
  alias lt=et
  alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
  alias lta=eta
  alias l='clear && ls'
  
fi

alias grep='grep --color=always'
alias bat='bat --theme="Visual Studio Dark+"'
