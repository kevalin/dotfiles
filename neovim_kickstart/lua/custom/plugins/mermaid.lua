return {
  {
    -- Link to your local mermaid.nvim plugin
    dir = '/Users/linli/Documents/github/mermaid.nvim',
    name = 'mermaid.nvim',
    -- Optional: Load it only for specific filetypes if you want
    -- ft = { "mermaid" },
    config = function()
      require('mermaid').setup {
        preview = {
          renderer = 'mermaid.js',
          theme = 'default', -- Or any other theme supported by beautiful-mermaid
        },
      }
    end,
  },
}
