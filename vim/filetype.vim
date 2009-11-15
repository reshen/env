" When using ClearCase for versioning, often you will view a specific version
" of a file like filename.c@@\main\branch\42. Vim cannot correctly identify
" the file type from this full name. To fix this, you can create an
" autocommand in the filetype.vim file in your user runtime directory. 
" http://vim.wikia.com/wiki/Automatic_file_type_detection_with_fully_qualified_ClearCase_names
augroup filetypedetect
     au BufNewFile,BufRead *@@/*
      \ if expand("%") =~ '@@' |
      \ exe "doau filetypedetect BufRead " . expand("%:s?@@.*$??") |
      \ endif
     au BufNewFile,BufRead *.svn*
      \ if expand("%") =~ '.svn' |
      \ exe "doau filetypedetect BufRead " . expand("%:s?\\.svn-base$??") |
      \ endif
 augroup END

