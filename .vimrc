set textwidth=80
set colorcolumn=+1
set encoding=utf-8 " #encoding displayed
set fileencoding=utf-8 " #encoding written
set nu! 

syntax on

function! MyFormatExpr(start, end)
    silent execute a:start.','.a:end.'s/[.!?]\zs /\r/g'
endfunction

set formatexpr=MyFormatExpr(v:lnum,v:lnum+v:count-1)
