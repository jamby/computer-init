" turn pathogen on for autoloading bundles in the ~/.vim/autoload and ~/.vim/bundle paths...
execute pathogen#infect()

" NerdTree configuration
" -->
" Open NerdTree if no file specified
" autocmd vimenter * if !argc() | NERDTree | endif
" autocmd vimenter * NERDTree

" Quit vim if NerdTree is the last window open... but with line above, will
" only close if there is a file opened, if not, must do :q twice to exit
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" set ctrl + n to open NerdTree...
map <leader>n :NERDTreeToggle<CR>
" <-- end NerdTree configuration...

" set the indent character...
" let g:indentLine_char = '|'
" :set list lcs=tab:\|\

" CTRL+P Funky - finding methods quickly in file
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" Ctrl+ Funky syntax highlighting
let g:ctrlp_funky_syntax_highlight = 1

" vim-textobj-rubyblock settings
" -->
runtime macros/matchit.vim
"It is also essential that you enable filetype plugins, and disable Vi compatible mode. Placing these lines in your vimrc file will do this:

set nocompatible
if has("autocmd")
  filetype indent plugin on
endif
" <-- end vim-textobj-rubyblock settings

" turn on solarized colors
syntax enable
" set terminal colors to 256
" set t_Co=256
set background=dark
" if !has('gui_running')
"   let g:solarized_termcolors=&t_Co
"   let g:solarized_termtrans=1
" endif
colorscheme hybrid_reverse

let g:enable_bold_font=1

" Ctrlp attempt
set runtimepath^=~/.vim/bundle/ctrlp.vim

" turn on the current git branch using vim-fugitive...
" set statusline+=%{fugitive#statusline()}
" set statusline+=%F

" turn this setting on so NerdCommenter works...
filetype plugin on

" pathogen package configs above the line...
" NOTE: NerdCommenter sucks so far.  Consider removing it from  ~/.vim/bundle...
" ------------------------------------------
" custom configs below the line...

" turn the syntax highlighting on...
:syntax on

" set up commenting for a line or a range of lines...
":map h :'<,'>s:^:#
:map <leader>cc :s:^:#<cr>
:map <leader>co :s:^#:<cr>

:map <C-_> :s:^:#:<cr>

:set tabstop=2
:set shiftwidth=2
:set expandtab

" show line numbers
:set number

let g:airline_section_c='%t'
let g:airline_section_x=''
let g:airline_section_y=''
let g:airline_section_warning=''
let g:airline_detect_paste=1
" timeoutlen=50

" Use ctrl-[jkl;] to select the active split!
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-k> :wincmd j<CR>
nmap <silent> <c-j> :wincmd k<CR>
nmap <silent> <c-l> :wincmd l<CR>

" remap hjkl to jkl;
"noremap ; l
"noremap l k
noremap k j
noremap j k

" set F5 to load the buffers list and then enter the buffer command so you
" only need to enter the number of the buffer you want to go to...
:nnoremap <F5> :buffers<CR>:buffer<Space>

" highlight search matches...
:set hlsearch

" show the status line always...
:set laststatus=2

" for JSX
let g:jsx_ext_required=0
