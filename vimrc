" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :PluginInstall or $ vim +PluginInstall +qall
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'christoomey/vim-tmux-navigator'

Plugin 'benmills/vimux'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 't9md/vim-quickhl'

call vundle#end()            " required
filetype plugin indent on    " required


set shell=/bin/bash


" set leader
let mapleader=";"




" vim tmux navigator
let g:tmux_navigator_disable_when_zoomed = 1


" airline tab theme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'



"""" VIMUX

" Prompt for a command to run
map <Leader>vc :VimuxPromptCommand<CR>

" Close
map <Leader>vq :VimuxPromptCommand<CR>

" Prompt for a command to run
"map <Leader>vm :VimuxPromptCommand("make ")<CR>
map <Leader>vm :VimuxRunCommand("make")<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Open pane
"map <Leader>vo :VimuxOpenRunner<CR>



"""" Termdebug

map <Leader>gg :packadd termdebug<CR>:Termdebug<CR>
" next
map <Leader>gn :Over<CR>
" step
map <Leader>gs :Step<CR>
map <Leader>gb :Break<CR>
" delete a break
map <Leader>gd :Clear<CR>
map <Leader>gc :Continue<CR>


"""" quick highlight
nmap <Leader>w <Plug>(quickhl-manual-this-whole-word)
xmap <Leader>w <Plug>(quickhl-manual-this-whole-word)

nmap <Leader>n <Plug>(quickhl-manual-go-to-next)
xmap <Leader>n <Plug>(quickhl-manual-go-to-next)

nmap <Leader>b <Plug>(quickhl-manual-go-to-prev)
xmap <Leader>b <Plug>(quickhl-manual-go-to-prev)

nmap <Leader>W <Plug>(quickhl-manual-reset)
xmap <Leader>W <Plug>(quickhl-manual-reset)

nmap <Leader>j <Plug>(quickhl-cword-toggle)




" buffer


" tab
map <C-o> :tabnew<CR>
map <C-p> :tabnew %<CR>
"map <C-[> :-1tabnew<CR>
map <C-]> :-1tabnew %<CR>

" maximize a tab
"map <C-X> <C-W><C-\|><C-W><C-_>
map <C-X> <C-W>\|<C-W>_

" move tab
map <SPACE> gt
map , gT


" split view


" window navigate
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" simple way to move window
map <TAB> <C-w><C-w>

" go to shell
"map <CR> :sh<CR>



nmap <Up> <Up>zz
nmap <Down> <Down>zz

"nmap <Backspace> <C-t>


set hlsearch " searching pattern highlighting
set smartcase
set nu " line number



set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
"set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

set autoindent
set cindent

set si "smart indent
set tabstop=4
set shiftwidth=4     " indent also with 4 spaces
set expandtab




set colorcolumn=80,120
highlight ColorColumn ctermbg=52






set history=10000
set laststatus=2
" set paste
set showmatch " brace highlighting
set background=dark




function Blame() range
execute '!git blame -L ' . a:firstline . ',' . a:lastline . ' %'
endfunction
vnoremap K :call Blame()<CR>


set redrawtime=10000




set autoread


" cursor highlight
set cursorline
set cursorcolumn

" stay highlight
" regist : <Leader>m
" go : 'm
" delete : :match
"nnoremap <silent> <Leader>m mm:execute 'match Search /\%'.line('.').'l/'<CR>


au BufNewFile,BufRead *.tpp set filetype=cpp


syntax on




