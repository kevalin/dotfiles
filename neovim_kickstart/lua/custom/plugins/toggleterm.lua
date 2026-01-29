return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        size = 20,
        direction = 'float',
        float_opts = {
          border = 'curved',
        },
      }
    end,
    keys = {
      { '<c-\\>', '<cmd>ToggleTerm<cr>', desc = 'Toggle terminal' },
      { '<leader>t', '<cmd>ToggleTerm<cr>', desc = 'Toggle terminal' },
      { '<leader>th', '<cmd>ToggleTerm size=10 direction=horizontal<cr>', desc = 'Toggle horizontal terminal' },
      { '<leader>tv', '<cmd>ToggleTerm size=80 direction=vertical<cr>', desc = 'Toggle vertical terminal' },
      { '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', desc = 'Toggle float terminal' },
    },
  },
}
