return {
  'danymat/neogen',
  config = function()
    require('neogen').setup {
      snippet_engine = 'luasnip',
      languages = {
        ['cpp.doxygen'] = require 'neogen.configurations.cpp',
      },
    }

    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap('n', '<Leader>ng', ":lua require('neogen').generate()<CR>", opts)
    vim.api.nvim_set_keymap('n', '<Leader>nc', ":lua require('neogen').generate({ type = 'class' })<CR>", opts)
    vim.api.nvim_set_keymap('n', '<Leader>nf', ":lua require('neogen').generate({ type = 'func' })<CR>", opts)
  end,
  -- Uncomment next line if you want to follow only stable versions
  version = '*',
}
