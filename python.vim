" python.vim    : contains a function to toggle comments for python files
" Version       : 1.1.2
" Maintainer    : WarpEngineer <https://github.com/WarpEngineer>
" Last Modified : 2016-11-09
" License       : MIT

if exists("ld_pt_comment_toggle")
	finish " stop loading
endif
if exists("ld_comment_toggle")
	echohl WarningMsg
	echon " **** Comment Toggle already loaded...Skipping **** "
	echohl None
	finish " stop loading
endif
let ld_comment_toggle=1
let ld_pt_comment_toggle=1

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
