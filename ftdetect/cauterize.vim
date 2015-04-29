function! s:setf(filetype) abort
  if &filetype !=# a:filetype
    let &filetype = a:filetype
  endif
endfunction

" Cauterize Schema
au BufNewFile,BufRead *.caut			call s:setf('cauterize')

" Cauterize Specification
au BufNewFile,BufRead *.cautspec	call s:setf('cauterize')
