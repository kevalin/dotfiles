return {
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup {
        diagnostic_only_current = true,
      }
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons', -- optional
    },
  },
}
