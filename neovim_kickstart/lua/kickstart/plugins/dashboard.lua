return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    --     local logo = [[
    --
    -- ██╗    ██╗██╗███╗   ██╗ █████╗  █████╗
    -- ██║    ██║██║████╗  ██║██╔══██╗██╔══██╗
    -- ██║ █╗ ██║██║██╔██╗ ██║╚██████║╚█████╔╝
    -- ██║███╗██║██║██║╚██╗██║ ╚═══██║██╔══██╗
    -- ╚███╔███╔╝██║██║ ╚████║ █████╔╝╚█████╔╝
    --  ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝ ╚════╝  ╚════╝
    --
    --
    -- ]]
    local logo = [[
    
 ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ 
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   
         ░    ░  ░    ░ ░        ░   ░         ░   
                                ░                  

    ]]
    logo = string.rep('\n', 8) .. logo .. '\n\n'
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = vim.split(logo, '\n'),
        center = {
          { action = 'Telescope find_files', desc = ' Find file', icon = '󰈞 ', key = 'f' },
          { action = 'ene | startinsert', desc = ' New file', icon = ' ', key = 'e' },
          { action = 'Telescope oldfiles', desc = ' Recent files', icon = '󱋢 ', key = 'r' },
          { action = 'Telescope live_grep', desc = ' Find text', icon = '󰈞 ', key = 'w' },
          {
            action = 'cd ~/.config/nvim | e ~/.config/nvim/init.lua',
            desc = ' Configuration',
            icon = ' ',
            key = 'c',
          },
          -- { action = 'Lazy update', desc = ' Update plugins', icon = ' ', key = 'u' },
          -- { action = 'Mason', desc = ' Mason', icon = ' ', key = 'm' },
          -- { action = 'Neogit', desc = ' NeoGit', icon = ' ', key = 'g' },
          -- {
          --   action = 'lua require("persistence").load({ last = true })',
          --   desc = ' Restore last session',
          --   icon = '󰦛 ',
          --   key = 'l',
          -- },
          { action = 'qa', desc = ' Quit Neovim', icon = '󰿅 ', key = 'q' },
        },
        footer = function()
          local stats = require('lazy').stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { 'Neovim loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins in ' .. ms .. 'ms' }
        end,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
