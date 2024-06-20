return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup {
      hover = {
        max_height = 0.5,
      },
    }
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons', -- optional
  },
  keys = {
    {
      'K',
      '<cmd>Lspsaga hover_doc<cr>',
      desc = 'Lspsaga hover_doc',
    },
    {
      'T',
      '<cmd>Lspsaga term_toggle<cr>',
      desc = 'Lspsaga term_toggle',
    },
  },
}
