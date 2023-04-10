local o = vim.o
local g = vim.g

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

o.background = "dark"
o.number = true
o.relativenumber = true
o.wrap = false
o.incsearch = true
o.cursorline = true
o.hlsearch = false
o.splitbelow = true
o.splitright = true
o.errorbells = false
o.numberwidth = 4
o.colorcolumn = 120
o.showmode = false
o.showtabline = 2
o.signcolumn = 'yes'
o.shiftround = true
o.scrolloff = 8
o.sidescrolloff = 8

o.termguicolors = true

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smarttab = true
o.autoindent = true
o.smartindent = true
o.cindent = true

o.ignorecase = true
o.smartcase = true
o.backup = false
o.writebackup = false
o.swapfile = false
o.autowrite = true
o.autoread = true

vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_winsize = 25
g.do_filetype_lua = 1
-- g.did_load_filetypes = 0

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

local which_os = require('util/which_os')
if which_os.is_win() then
  vim.o.shell = "pwsh.exe"
end
if which_os.is_mac() or which_os.is_linux() then
  vim.o.shell = "zsh"
end
