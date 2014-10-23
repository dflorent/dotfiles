" Vundle
set nocompatible
filetype off

" Ajoute de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" On indique a Vundle de s'auto-generer
Plugin 'gmarik/Vundle.vim'

" Placer ici la liste des plugins Vundle
Plugin 'altercation/vim-colors-solarized'

" Tous les plugins doivent etre ajoutes avant cette ligne 
call vundle#end()
filetype plugin indent on

" :PluginList       - liste des plugins configures
" :PluginInstall    - installation des plugin
" :PluginUpdate     - mis  a jour des plugins
" :PluginSearch foo - recherche pour foo
" :PluginClean      - suppression des plugins inutilises
" voir :h vundle pour plus d'informations ou wiki ou FAQ

" Indentation
set smartindent 
set tabstop=4
set shiftwidth=4
set expandtab

" Affiche les numeros de ligne en relative 
set relativenumber

" Affiche un repere a 80 caractere et limite a 80 caracteres
" set colorcolumn=80
" set tw=79
" set textwidth=79

" Ligne courante en surbrillance
set cursorline

" Colorisation syntaxique
syntax on 
set background=dark
set encoding=utf8
colorscheme solarized

" Commentaire en italique
" highlight Comment cterm=italic

" Active la surbrillance lors d'une recherche.
set hlsearch 

" Affiche la position actuelle du curseur 
set ruler 

" Affiche la commande en cours
set showcmd

" Supprimer le soulignement sur les liens HTML
:hi link htmlLink NONE
