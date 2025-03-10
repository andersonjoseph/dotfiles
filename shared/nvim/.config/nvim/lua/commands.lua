vim.cmd([[
  command! -nargs=+ -complete=file -bar Grep silent grep <args> | cwindow
]])
