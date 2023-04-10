local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)
keymap('n', 'gd', '<Cmd>Lspsaga goto_definition<CR>', opts)
keymap("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>", opts)
keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
keymap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
