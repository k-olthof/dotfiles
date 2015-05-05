" Enable a column at 100 characters line length
set colorcolumn=120

autocmd BufWritePost *.py call Flake8()
