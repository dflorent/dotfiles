" Vundle
set nocompatible
filetype off

" Ajout de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" On indique a Vundle de s'auto-generer
Plugin 'gmarik/Vundle.vim'

" Placer ici la liste des plugins Vundle
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'edkolev/tmuxline.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'

" Tous les plugins doivent etre ajoutes avant cette ligne
call vundle#end()
filetype plugin indent on

" :PluginList       - liste des plugins configures
" :PluginInstall    - installation des plugin
" :PluginUpdate     - mis a jour des plugins
" :PluginSearch foo - recherche pour foo
" :PluginClean      - suppression des plugins inutilises
" voir :h vundle pour plus d'informations ou wiki ou FAQ

" Pas de backups
set nobackup
set nowritebackup
set noswapfile

" Prise en charge de la souris
set mouse=a

" Touche backspace
set backspace=2

" Numéros de ligne
set number
set relativenumber

" Ligne courante en surbrillance
set cursorline

" Indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
autocmd Filetype html,css,scss,javascript,htmldjango setlocal tabstop=2 shiftwidth=2

" Affiche un repère à 120 caractères
set colorcolumn=120
set nowrap

" Colorisation syntaxique
syntax enable
set encoding=utf8
set t_Co=256
set background=dark
colorscheme solarized

" Active la surbrillance lors d'une recherch (bascule avec <F4>)
set hlsearch
noremap <F4> :set hlsearch! hlsearch?<CR>

" Affiche la position actuelle du curseur
set ruler

" Affiche la commande en cours
set showcmd

" Supprime le soulignement sur les liens HTML
:hi link htmlLink NONE

" Copier en utilisant le clipboard
map <C-c> "+y<CR>

" Basculer en auto-indentation lors d'un copier-coller
set pastetoggle=<F2>

" delimitMate
let g:delimitMate_autoclose = 1
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let delimitMate_expand_inside_quotes = 1
let g:delimitMate_smart_quotes = 1
let g:delimitMate_jump_expansion = 1
let g:delimitMate_matchpairs = "(:),[:],{:},<:>"

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" ctrlp
let g:ctrlp_working_path_mode = 'ra'

" tmuxline
let g:tmuxline_powerline_separators = 0

" emmet (Shift + Tab)
imap <expr> <s-tab> emmet#expandAbbrIntelligent("\<s-tab>")

" the silver seracher (code-searching tool)
let g:ackprg = 'ag --vimgrep'

" ale
let g:ale_completion_enabled = 1

" Raccourcis
noremap     <S-Tab>      :bprevious<CR>
noremap     <Tab>        :bnext<CR>
vnoremap    <Tab>        >
vnoremap    <S-Tab>      <
noremap     <S-Right>    <C-w><Right>
noremap     <S-Left>     <C-w><Left>
noremap     <S-Up>       <C-w><Up>
noremap     <S-Down>     <C-w><Down>
