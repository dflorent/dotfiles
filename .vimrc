"" Pathogen
execute pathogen#infect()
filetype plugin indent on

set smartindent 
set tabstop=4
set shiftwidth=4
set expandtab

" Affiche les numéros de ligne et les numéros de ligne en relative
" set number 
set relativenumber

" Affiche un repère à 80 caractères et limite à 80 caractères
" set colorcolumn=80
" set tw=79
" set textwidth=79

" Ligne courante en surbrillance
set cursorline

" Colorisation syntaxique
syntax on 
set background=dark
set encoding=utf8
" colorscheme monokai
" colorscheme desert
" colorscheme Tomorrow-Night 
" colorscheme Tomorrow
" colorscheme railscasts
" colorscheme codeschool
colorscheme solarized
" colorscheme jellybeans
" colorscheme twilight
" colorscheme github
" colorscheme bubblegum
" colorscheme wombat
" colorscheme ir_black

" Commentaire en italique
highlight Comment cterm=italic

" Active la surbrillance lors d'une recherche.
set hlsearch 

" Toujours afficher la position actuelle du curseur dans le coin inférieur droit de la 
" Fenêtre de Vim.
set ruler 

" Afficher une commande incomplète dans le coin inférieur droit de la fenêtre Vim, 
" gauche de la règle.
set showcmd

" Appuyer sur Ctrl + n pour ouvrir et fermer le panneau NERDTree
map <C-n> :NERDTreeToggle<CR>

" Quitter automatiquement NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeTabsToggle") && b:NERDTreeTabsToggle == "primary") | q | endif

" Supprimer le soulignement sur les liens HTML
:hi link htmlLink NONE
