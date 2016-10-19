" Auto generate lists in text documents

if exists("b:lists_loaded")
  finish
endif
let b:lists_loaded = 1

source ~/.vim/plugin/utilities.vim

function! s:Leader()
  let prev_line = UtilitiesPreviousLine()

  if prev_line =~# '\v^\s*--\s*[^ ]'
    return '-- '
  elseif prev_line =~# '\v^\s*\d+[.\)]\s*[^ ]'
    let number = matchstr(prev_line, '\v\d+')
    let number += 1
    let symbol = matchstr(prev_line, '\v[\.\)]')
    return string(number) . symbol . ' '
  elseif prev_line =~# '\v^\s*--\s*$' || prev_line =~# '\v^\s*\d+[.\)]\s*$'
    normal! kdd
    return ''
  else
    return ''
  endif
endfunction!

function! s:PrintLeader()
  let register_contents = @a
  let @a = s:Leader()
  normal! "ap==

  let @a = register_contents
endfunction!

imap <buffer> <cr> <cr><esc>:call <SID>PrintLeader()<cr>A
nmap <buffer> o o<esc>:call <SID>PrintLeader()<cr>A

