" python.vim    : contains a function to toggle comments for python files
" Version       : 1.0
" Maintainer    : WarpEngineer <https://github.com/WarpEngineer>
" Last Modified : 2016-10-07
" License       : MIT

if exists("ld_pt_comment_toggle")
	finish " stop loading
endif
let ld_pt_comment_toggle=1

function! ToggleComment()
  " comment a range of lines
  let l = getline(".")
  if l[0] != "#"
	  call setline(line("."), "#".l)
  else
	  call setline(line("."), l[1:])
  endif
endfunction

nmap <C-_> :call ToggleComment()<cr>
vmap <C-_> :call ToggleComment()<cr>
