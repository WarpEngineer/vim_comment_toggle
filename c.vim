" c.vim         : contains a function to toggle comments for c files
" Version       : 1.0
" Maintainer    : WarpEngineer <https://github.com/WarpEngineer>
" Last Modified : 2016-10-07
" License       : MIT

if exists("ld_c_comment_toggle")
	finish " stop loading
endif
let ld_c_comment_toggle=1

if (&ft != 'c')
	finish
endif

function! ToggleComment()
  " comment a range of lines
  let l = getline(".")
  if l[0] == "/" && l[1] == "*"
	  call setline(line("."), l[3:-3])
  else
	  call setline(line("."), "/* " . l . " */")
  endif
endfunction

nmap <C-_> :call ToggleComment()<cr>
vmap <C-_> :call ToggleComment()<cr>
