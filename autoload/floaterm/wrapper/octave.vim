function! floaterm#wrapper#octave#(cmd) abort
  let s:octave_tmpfile = tempname()
  " let cmd = a:cmd .  ' > ' . s:octave_tmpfile
  let cmd = a:cmd 
  return [cmd, {'on_exit': funcref('s:octave_callback')}, v:true]
endfunction

function! s:octave_callback(...) abort
  if filereadable(s:octave_tmpfile)
    let filenames = readfile(s:octave_tmpfile)
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
