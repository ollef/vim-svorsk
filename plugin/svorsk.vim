let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
function! s:svorsk()
  for line in readfile(s:path . '/svorsk.txt')
    execute 'Abolish ' . line
  endfor
endfunction

command Svorsk call s:svorsk()
