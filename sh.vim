" python.vim    : contains a function to toggle comments for shell scripts
" Version       : 1.1
" Maintainer    : WarpEngineer <https://github.com/WarpEngineer>
" Last Modified : 2016-10-17
" License       : MIT

if exists("ld_sh_comment_toggle")
	finish " stop loading
endif
let ld_sh_comment_toggle=1

function! ToggleComment()
  " comment a range of lines
  let l = getline(".")
  if l =~ '^\s*#\+' 
	  call setline(line("."), substitute(l, '^\(\s*\)\(#\+\)\(.\+\)$', '\1\3', ''))
  else
	  call setline(line("."), "#".l)
  endif
endfunction

nmap <C-_> :call ToggleComment()<cr>
vmap <C-_> :call ToggleComment()<cr>
