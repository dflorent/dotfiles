" Vundle
set nocompatible
filetype off

" Ajout de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" On indique a Vundle de s'auto-generer
Plugin 'gmarik/Vundle.vim'

" Placer ici la liste des plugins Vundle
Plugin 'flazz/vim-colorschemes'
Plugin 'joshdick/onedark.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'edkolev/tmuxline.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'sheerun/vim-polyglot'
Plugin 'mileszs/ack.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mkitt/tabline.vim.git'
Plugin 'vim-scripts/LustyExplorer'
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

set shell=sh
set hidden

" Leader re-mapping
let mapleader = ','

" Pas de backups
set nobackup
set nowritebackup
set noswapfile

" Indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
autocmd Filetype html,css,scss,javascript,htmldjango setlocal tabstop=2 shiftwidth=2

" Prise en charge de la souris
set mouse=a

" Touche backspace
set backspace=2

" Affiche les numeros de ligne en relative
set number

" Repère à 120 caractères
set colorcolumn=120
" set tw=119
" set textwidth=119
set nowrap

" Ligne courante en surbrillance
set cursorline

" Colorisation syntaxique
syntax enable
set encoding=utf8
set t_Co=256
set background=dark
colorscheme onedark

" Commentaire en italique (http://bit.ly/1DuFn1w)
" highlight Comment cterm=italic

" Active la surbrillance lors d'une recherche.
set hlsearch

" Affiche la position actuelle du curseur
set ruler

" Affiche la commande en cours
set showcmd

" Toggle paste
set pastetoggle=<F2>

" Supprimer le soulignement sur les liens HTML
:hi link htmlLink NONE

" Combinaison de touche Emmet (Shift + Tab)
imap <expr> <s-tab> emmet#expandAbbrIntelligent("\<s-tab>")

" delimitMate
let g:delimitMate_autoclose = 1
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let delimitMate_expand_inside_quotes = 1
let g:delimitMate_smart_quotes = 1
let g:delimitMate_jump_expansion = 1
let g:delimitMate_matchpairs = "(:),[:],{:},<:>"

" CtrlP
let g:ctrlp_working_path_mode = 'ra'

" Airline
set laststatus=2

" Tmuxline
let g:tmuxline_powerline_separators = 0

" Copier en utilisant le clipboard
map <C-c> "+y<CR>

" Smart shortcuts
noremap     <S-Tab>     :tabprevious<CR>
noremap     <Tab>       :tabnext<CR>
noremap     <C-t>       :tabedit
inoremap    <C-t>       <Esc>:tabedit
noremap     <C-w>       :q!<CR>
inoremap    <C-w>       <Esc>:q!<CR>
noremap     <silent>    <C-s>    :w!<CR>
inoremap    <silent>    <C-s>    <Esc>:w!<CR>
vnoremap    <Tab>       >
vnoremap    <S-Tab>     <
noremap     <S-Right>   <C-w><Right>
noremap     <S-Left>    <C-w><Left>
noremap     <S-Up>      <C-w><Up>
noremap     <S-Down>    <C-w><Down>

" the silver seracher (code-searching tool)
let g:ackprg = 'ag --vimgrep'

" Tabline
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=white  ctermbg=DarkBlue  cterm=NONE

" Ale
let g:ale_completion_enabled = 1
