-- 定义一个自动命令，当打开一个文件时，检查文件后缀并设置 filetype
vim.api.nvim_exec([[
  augroup filetypedetect
    autocmd!
    autocmd BufRead,BufNewFile *.hurl setfiletype hurl
  augroup END
]], false)
