au BufRead,BufNewFile *.ngx                 set filetype=nginx
au BufRead,BufNewFile */nginx/nginx.conf    set filetype=nginx
au BufRead,BufNewFile */nginx/conf/*        set filetype=nginx
au BufRead,BufNewFile */nginx/conf.d/*      set filetype=nginx
au BufRead,BufNewFile */nginx/sites-*/*     set filetype=nginx
au BufRead,BufNewFile */nginx/vhosts/*      set filetype=nginx
