function! floaterm#wrapper#matlab#(cmd) abort
  let s:matlab_tmpfile = tempname()
  " let cmd = a:cmd .  ' > ' . s:matlab_tmpfile
  let cmd = a:cmd 
  return [cmd, {'on_exit': funcref('s:matlab_callback')}, v:true]
endfunction

function! s:matlab_callback(...) abort
  if filereadable(s:matlab_tmpfile)
    let filenames = readfile(s:matlab_tmpfile)
    if !empty(filenames)
      if has('nvim')
        call floaterm#window#hide_floaterm(bufnr('%'))
      endif
      for filename in filenames
        execute g:floaterm_open_command . ' ' . fnameescape(filename)
      endfor
    endif
  endif
endfunction
