set statusline=                     " Clear statusline
set statusline+=\                   " Add space
set statusline+=%F                  " Add full filepath
set statusline+=\                   " Add space
set statusline+=%m                  " [+] for modified, [-] for unmodifiable
set statusline+=%=                  " Left/Right separator
set statusline+=%y                  " Add filetype
set statusline+=[%{&fileformat}]    " Add fileformat
set statusline+=%#StatusLineError#  " Change foreground to red
set statusline+=%r                  " [RO]
set statusline+=%*                  " End special coloring
set statusline+=[%c%V,%l/%L]        " [column,line/totallines]
