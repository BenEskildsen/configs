" Turn on syntax highlighting and line numbers
if has("syntax")
  syntax on
  set nu
  filetype on
  au BufNewFile,BufRead *.jq set filetype=javascript
endif

" Make tabs equal to 2 spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" set folding based on indentation
set foldmethod=indent
set foldnestmax=6
set foldlevel=0
set nofoldenable " press zc to close folds, open by default

" overwrite aggressive fold title with emtpy space
function! FoldingTitle()
    if (v:foldlevel>1)
        let line = repeat(' ', &sw * (v:foldlevel-1)).'|>'
    else
        let line = '|>'
    endif
    return line
endfunction
set foldtext=FoldingTitle()
set fillchars+=fold:\  " comment to keep the space there
" set foldcolumn=3 " optional
highlight Folded ctermbg=NONE guibg=NONE

" When pressing left at the start of a line or right at the end, wrap.
set whichwrap+=<,>,h,l,[,]

" Don't back up files since everything should be in git anyway
set nobackup
set nowb
set noswapfile

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" No error bells please
set noerrorbells
set noeb vb t_vb=

" keep at least 5 lines above/below
set scrolloff=5

" listen for the mouse in vim
if has("mouse")
    set mouse=a
endif

" try to convert text to pdf with the :Rpdf command
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -

" make :W equivalent to :w
:command! W :w
:command! Q :q
:command! Wq :wq
:command! E :e
