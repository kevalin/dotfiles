return {
  "Kevalin/tomato-timer.nvim",
  dir = "/Users/linli/Documents/github/tomato-timer.nvim",
  dependencies = { "rcarriga/nvim-notify" },
  config = function()
    local ok, tomato = pcall(require, 'tomato')
    if not ok then return end

    tomato.setup({
      chunk = 4,
      round = 25,
      short_break = 5,
      long_break = 15,
    })

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    map('n', '<C-t>', "<cmd>lua require('tomato').start_round()<CR>", opts)
    map('n', '<C-r>', "<cmd>lua require('tomato').reset()<CR>", opts)
    map('n', '<C-w>', "<cmd>lua require('tomato').open_window()<CR>", opts)
  end
}
