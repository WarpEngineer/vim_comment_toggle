# vim_comment_toggle
Very simple Vim functions to toggle comments for c, c++, Python, shell scripts, and Erlang files.

Just add the files or the functions to ~/.vim/ftplugin directory.  
The keys mapped to toggle comments are [CTRL]_  (that's control + underscore) and can be changed easily.

Currently, only one comment type is supported at a time.  If a different file type is loaded in the same Vim session, then a warning is given and the keys are not remapped.  I'll be looking into making it smarter in the future as long as it stays simple.

Available on vim.org (http://www.vim.org/scripts/script.php?script_id=5458)
