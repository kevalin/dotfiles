local M = {}

function M.setup()
  -- Indicate first time installation
  local packer_bootstrap = false

  -- packer.nvim configuration
  local conf = {
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },

    display = {
      open_fn = function()
        return require('packer.util').float { border = 'rounded' }
      end,
    },
  }

  -- Check if packer.nvim is installed
  -- Run PackerCompile if there are changes in this file
  local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system {
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path,
      }
      vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd 'autocmd BufWritePost plugins.lua source <afile> | PackerCompile'
  end

  -- Plugins
  local function plugins(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lualine/lualine.nvim' -- Statusline
    use 'nvim-lua/plenary.nvim' -- Common utilities

    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'neovim/nvim-lspconfig' -- LSP
    use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    use 'glepnir/lspsaga.nvim' -- LSP UIs
    use 'L3MON4D3/LuaSnip'
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'kyazdani42/nvim-web-devicons' -- File icons
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use({
      'iamcco/markdown-preview.nvim',
      run = function() vim.fn['mkdp#util#install']() end,
    })
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim' -- For git blame & browse

    use 'numToStr/Comment.nvim' -- Comment
    -- use 'kg8m/vim-simple-align' -- Align tool
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use { 'ur4ltz/surround.nvim' }
    use 'fedepujol/move.nvim'
    use 'folke/tokyonight.nvim'

    use 'famiu/bufdelete.nvim' -- delete buffer

    use {
      'nvim-tree/nvim-tree.lua', -- a file explorer
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use {
      "akinsho/toggleterm.nvim", -- manage term
      tag = '*',
    }

    use { 'Vonr/align.nvim' }

    -- Bootstrap Neovim
    if packer_bootstrap then
      print 'Restart Neovim required after installation!'
      require('packer').sync()
    end
  end

  -- Init and start packer
  packer_init()
  local packer = require 'packer'
  packer.init(conf)
  packer.startup(plugins)
end

return M
