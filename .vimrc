syntax enable
"===============================================================================
" Tab related functions
"===============================================================================
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

"===============================================================================
" Setup root dir
"===============================================================================
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif

"===============================================================================
" Setup backup/undo folders
"===============================================================================

set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo

if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif

if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif

set undofile
set swapfile  

"Turn on backup option
set backup

"Make backup before overwriting the current buffer
set writebackup

"Overwrite the original backup file
set backupcopy=yes

"Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

