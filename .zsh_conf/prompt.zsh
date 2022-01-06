HISTSIZE=100000                 # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000                # 上述のファイルに保存する履歴のサイズ

# share .zsh_history
setopt inc_append_history       # 実行時に履歴をファイルにに追加していく
# setopt share_history            # 履歴を他のシェルとリアルタイム共有する

setopt hist_reduce_blanks       # ブランクを削除
setopt hist_ignore_all_dups     # ヒストリーに重複を表示しない
setopt hist_save_no_dups        # 重複するコマンドが保存されるとき、古い方を削除する。
setopt extended_history         # コマンドのタイムスタンプをHISTFILEに記録する
setopt hist_expire_dups_first   # HISTFILEのサイズがHISTSIZEを超える場合は、最初に重複を削除します
setopt auto_param_keys

# fzf
# Esc→t はすでに使われているので、 Esc→e に割り当てる(2つの単語を入れ替えたいときないが……)
bindkey '^[e' fzf-file-widget    # Esc → e or option + e
bindkey '^[r' fzf-history-widget # Esc → r or option + r
