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


call vundle#end()            " required
filetype plugin indent on    " required


set shell=/bin/bash


" set leader
let mapleader="\\"





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



" buffer


" tab
map <C-o> :tabnew<CR>

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

"set si "smart indent
"set tabstop=4
"set shiftwidth=4     " indent also with 4 spaces
"set expandtab




set colorcolumn=80
highlight ColorColumn ctermbg=52






set history=10000
set laststatus=2
" set paste
set showmatch " brace highlighting
set background=dark



set autoread


" cursor highlight
set cursorline
set cursorcolumn

" stay highlight
" regist : <Leader>m
" go : 'm
" delete : :match
nnoremap <silent> <Leader>m mm:execute 'match Search /\%'.line('.').'l/'<CR>


au BufNewFile,BufRead *.tpp set filetype=cpp


syntax on






" cscope
if has("cscope")
    set cscopetag
    set csto=0
    if filereadable("cscope.out")
	cs add cscope.out
    elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB
    endif
    set cscopeverbose

    nmap <C-n>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-n>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-n>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-n>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-n>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-n>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-n>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-n>d :cs find d ^<C-R>=expand("<cword>")<CR><CR>

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

"	map <C-1> :cp<CR>
"	map <C-2> :cn<CR>
"	map <C-3> :cw<CR>
"	map <C-4> :set cscopequickfix=s-,c-,d-,i-,t-,e-<CR>
"	map <C-5> :set cscopequickfix=s0,c0,d0,i0,t0,e0<CR>
	nmap <C-n>p <C-t>
endif

