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
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mattn/emmet-vim'
Plugin 'evidens/vim-twig'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-markdown'
Plugin 'bling/vim-airline'

" Tous les plugins doivent etre ajoutes avant cette ligne 
call vundle#end()
filetype plugin indent on

" :PluginList       - liste des plugins configures
" :PluginInstall    - installation des plugin
" :PluginUpdate     - mis  a jour des plugins
" :PluginSearch foo - recherche pour foo
" :PluginClean      - suppression des plugins inutilises
" voir :h vundle pour plus d'informations ou wiki ou FAQ

" Pas de backups
set nobackup
set nowritebackup
set noswapfile

" Indentation
set smartindent 
set tabstop=4
set shiftwidth=4
set expandtab

" Affiche les numeros de ligne en relative 
set relativenumber

" Affiche un repere a 80 caractere et limite a 80 caracteres
set colorcolumn=80
set tw=79
set textwidth=79

" Ligne courante en surbrillance
set cursorline

" Colorisation syntaxique
syntax enable
set encoding=utf8
set t_Co=256
set background=dark
colorscheme Tomorrow-Night-Bright

" Commentaire en italique (http://bit.ly/1DuFn1w)
" highlight Comment cterm=italic

" Active la surbrillance lors d'une recherche.
set hlsearch 

" Affiche la position actuelle du curseur 
set ruler 

" Affiche la commande en cours
set showcmd

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

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
