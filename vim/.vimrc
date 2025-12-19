" ================================
"  Vim Configuration
"  Inspired by Helix workflow
" ================================

" ================================
"  PLUGIN MANAGEMENT (vim-plug)
" ================================
call plug#begin('~/.vim/plugged')

" LSP & Completion
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'liuchengxu/vista.vim'                   " Tag viewer

" UI & Interface
Plug 'tomasiser/vim-code-dark'               " Colorscheme
Plug 'preservim/nerdtree'                    " File explorer
Plug 'ryanoasis/vim-devicons'                " Icons

" Fuzzy Finder (Helix-like navigation)
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Editing Enhancements
Plug 'tpope/vim-commentary'                  " Commenting

Plug 'easymotion/vim-easymotion'

Plug 'liuchengxu/vim-which-key'

call plug#end()

" ================================
"  BASIC SETTINGS
" ================================
set nocompatible                            " Use Vim settings, not Vi
filetype plugin indent on                   " Enable filetype detection
syntax on                                   " Enable syntax highlighting

" ================================
"  EDITOR BEHAVIOR
" ================================
set hidden                                  " Allow hidden buffers
set updatetime=300                          " Faster updates for LSP
set signcolumn=yes                          " Always show sign column
set completeopt=menuone,noinsert,noselect   " Completion menu options
set whichwrap+=h,l                          " Cursor wraps lines
set smartindent

" ================================
"  VISUAL SETTINGS
" ================================
set number                                  " Show line numbers
colorscheme codedark                        " Colorscheme

" ================================
"  CLIPBOARD & MOUSE
" ================================
set mouse=a                                 " Enable mouse in all modes
set mousefocus                              " Window focuses on mouse
set ttymouse=sgr                            " Better mouse support
set clipboard=unnamedplus                   " Use system clipboard

" ================================
"  LEADER KEY (Helix Style)
" ================================
let mapleader = " "
let maplocalleader = ","
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" let g:mapleader ="\<Space>"
" let g:maplocalleader = ','
" nnoremap <Space> <Nop>                      
nnoremap <Space> <Nop>
vnoremap <Space> <Nop>
onoremap <Space> <Nop>

" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" vnoremap <silent> <leader> :WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" nnoremap <silent> g :<c-u>WhichKey 'g'<CR>
nnoremap <silent> g     :<c-u>WhichKey 'g'<CR>
" nnoremap <silent> [     :<c-u>WhichKey '['<CR>
" nnoremap <silent> ]     :<c-u>WhichKey ']'<CR>
" nnoremap <silent> z     :<c-u>WhichKey 'z'<CR>
" nnoremap <silent> <C-w> :<c-u>WhichKey '<C-w>'<CR>


" ================================
"  LSP CONFIGURATION
" ================================
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_signs_enabled = 1
let g:lsp_diagnostics_highlights_enabled = 1

" ================================
"  KEY MAPPINGS
" ================================

" ---------- LSP Keybindings ----------
nnoremap gd :LspDefinition<CR>
nnoremap gr :LspReferences<CR>
nnoremap gi :LspImplementation<CR>
nnoremap K  :LspHover<CR>
nnoremap <leader>rn :LspRename<CR>
nnoremap <leader>ca :LspCodeAction<CR>
nnoremap <leader>m :Maps<CR>

" ---------- Navigation ----------
" Fuzzy Finder (FZF) - Helix-style
nnoremap <leader>f :Files<CR>               
nnoremap <leader>b :Buffers<CR>             
nnoremap <leader>/ :Rg<CR>                 
nnoremap <leader>h :Helptags<CR>            
nnoremap <leader>s :BLines<CR>              

" ---------- File Explorer ----------
nnoremap <F12> :call ToggleNERDTreeFind()<CR>

" ---------- Git ----------
" nnoremap <silent> <F11> :call LazyGitFloat()<CR>

" ---------- Completion ----------
imap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
imap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" nmap s <Plug>(easymotion-s2)
" nmap <leader>j <Plug>(easymotion-bd-w)
nmap gw <Plug>(easymotion-bd-w)

" ================================
"  PLUGIN CONFIGURATION
" ================================

" ---------- FZF ----------
let g:fzf_layout = { 'down': '40%' }        " Helix-like command palette
" let g:fzf_shell = 'bash'

" Use fd if available for faster searching
if executable('fd')
  let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --follow --exclude .git' " exclude node_modules *.swp (vim swap files)
endif

" ---------- NERDTree ----------
let g:NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeAutoFind = 1

" =========================
" EasyMotion (Helix-like jump)
" =========================
let g:EasyMotion_do_mapping = 0        " we define our own mappings
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
let g:EasyMotion_verbose = 0
let g:EasyMotion_timeout = 300


" =========================
" which-key
" =========================
set timeout
set timeoutlen=200
let g:which_key_use_floating_win = 1
let g:which_key_ignore_invalid_key = 1

let g:which_key_map = {}
let g:which_key_map.g = {
      \ 'd': 'Go to definition',
      \ 'r': 'References',
      \ 'i': 'Implementation',
      \ 'g': 'Top of file',
      \ 'u': 'Lowercase',
      \ 'U': 'Uppercase',
      \ '~': 'Toggle case',
      \ 'w': 'EasyMotion word',
      \ }

" [ prefix
let g:which_key_map['['] = {
      \ 'b': 'Previous buffer',
      \ 'c': 'Previous change',
      \ 'q': 'Previous quickfix',
      \ }

" ] prefix
let g:which_key_map[']'] = {
      \ 'b': 'Next buffer',
      \ 'c': 'Next change',
      \ 'q': 'Next quickfix',
      \ }

" z prefix
let g:which_key_map.z = {
      \ 'z': 'Center cursor',
      \ 't': 'Top of screen',
      \ 'b': 'Bottom of screen',
      \ 'i': 'Toggle fold',
      \ 'o': 'Open fold',
      \ 'c': 'Close fold',
      \ }

" <C-w> prefix (window commands)
let g:which_key_map['<C-w>'] = {
      \ 'h': 'Move to left window',
      \ 'j': 'Move to lower window',
      \ 'k': 'Move to upper window',
      \ 'l': 'Move to right window',
      \ 's': 'Horizontal split',
      \ 'v': 'Vertical split',
      \ 'q': 'Close window',
      \ 'o': 'Only window',
      \ }

" ================================
"  FUNCTIONS
" ================================

" Toggle NERDTree or find current file
function! ToggleNERDTreeFind()
  if exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1
    :NERDTreeToggle
  else
    :NERDTreeFind
  endif
endfunction

" ================================
"  AUTOCMDS
" ================================

" Open NERDTree when Vim starts without file arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Close Vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | quit | endif

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
