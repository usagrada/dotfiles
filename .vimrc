" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
"左右のカーソル移動で行間移動可能にする。
set whichwrap=h,l,b,s,<,>,[,]
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
nnoremap <Up> gk
nnoremap <Down> gj
" シンタックスハイライトの有効化
syntax enable
" クリップボードにコピペを許可
set clipboard=unnamed
"autoselect

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

inoremap <silent> <C-j> <ESC>
noremap <silent> い i
noremap <silent> あ a


syntax enable
colorscheme hybrid

" 英字キーボード用
" セミコロンとコロンを入れ替え（ノーマルモード）
nnoremap ; :
nnoremap : ;

" if exists('g:vscode')
  " function! s:GetMode()
  "   if mode()[0] == 'i'
  "     return 'i'
  "   endif

  "   if stridx('vV<c-v>', mode()) > -1
  "     return 'v'
  "   endif

  "   return 'n'
  " endfunction

  " # VSCode extension
  " if GetMode() == 'v'
  "   inoremap <silent> い i
  "   inoremap <silent> あ a
  " endif
" endif