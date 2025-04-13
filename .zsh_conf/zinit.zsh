### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
  zdharma-continuum/zinit-annex-as-monitor \
  zdharma-continuum/zinit-annex-bin-gem-node \
  zdharma-continuum/zinit-annex-patch-dl \
  zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

autoload -Uz compinit && compinit

zinit ice wait'0' lucid; zinit light b4b4r07/enhancd
zinit ice wait'0' lucid; zinit light zsh-users/zsh-completions
zinit ice wait'1' lucid; zinit light zsh-users/zsh-autosuggestions
zinit ice wait'1' lucid; zinit light zsh-users/zsh-history-substring-search
# zinit ice wait'0' lucid; zinit light zsh-users/zsh-syntax-highlighting
zinit ice wait'0' lucid; zinit light zdharma-continuum/fast-syntax-highlighting
zinit ice wait'1' lucid; zinit light hlissner/zsh-autopair

zinit ice wait'1' lucid; zinit light MenkeTechnologies/zsh-cargo-completion

# git
zinit ice as"completion"
zinit snippet https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh
zinit ice wait"1" lucid; zinit snippet OMZL::git.zsh
zinit ice wait"1" lucid; zinit snippet OMZP::git
zinit ice lucid wait"0" as"program" from"gh-r" mv"lazygit* -> lazygit" atload"alias lg='lazygit'"
zinit ice wait'1' lucid; zinit light 'jesseduffield/lazygit'

# docker
# zinit ice as"completion"
# zinit snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker
# zinit ice as"completion"
# zinit snippet https://github.com/docker/compose/blob/master/contrib/completion/zsh/_docker-compose


# BAT-EXTRAS
zinit ice wait"1" as"program" pick"src/batgrep.sh" lucid
zinit ice wait"1" as"program" pick"src/batdiff.sh" lucid
zinit light eth-p/bat-extras
alias brg=batgrep.sh
alias bd=batdiff.sh
alias bman=batman.sh

## 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## 補完候補を一覧表示したとき、Tabや矢印で選択できるようにする
zstyle ':completion:*:default' menu select=1

################################################################################################

# fzf
zinit ice from"gh-r" as"program" wait'0' lucid; zinit light junegunn/fzf
zinit ice wait'0' lucid; zinit light atweiden/fzf-extras
zinit ice wait'0' lucid; zinit light Aloxaf/fzf-tab
zinit snippet https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh
zinit snippet https://github.com/junegunn/fzf/blob/master/shell/completion.zsh
zinit ice lucid as"program"; zinit snippet https://github.com/junegunn/fzf/blob/master/bin/fzf-tmux

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# fzf-tab setting
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'
