"
" utilities
" Copyright (C) 2016 Luke Wassink <lwassink@gmail.com>
"
" Distributed under terms of the MIT license.
"

if exists("g:utilities_loaded")
  finish
endif
let g:utilities_loaded = 1

function! UtilitiesSwitchFile(file_name, type)
  if filereadable(a:file_name)
    execute 'edit ' . a:file_name
  else
    echohl WarningMsg
    echom "A " . a:type .  " file does not exist for this file"
    echohl NONE
  endif
endfunction

function! UtilitiesPreviousLine()
  if line('.') ==# 1
    return '###'
  else
    return getline(line('.') - 1)
  endif
endfunction!

