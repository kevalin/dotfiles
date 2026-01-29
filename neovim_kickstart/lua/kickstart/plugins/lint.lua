return {
  { -- Linting
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'

      lint.linters.hurllint = {
        name = 'hurllint',
        cmd = 'hurlfmt',
        args = { '--check' },
        stdin = true,
        append_fname = true,
        stream = 'both',
        ignore_exitcode = true,
        parser = require('lint.parser').from_errorformat('%EError %n,%Cline %l,%Ccolumn %c,%Z%m'),
      }

      lint.linters.eslint_d.args = {
        '--no-warn-ignored', -- <-- this is the key argument
        '--format',
        'json',
        '--stdin',
        '--stdin-filename',
        function()
          return vim.api.nvim_buf_get_name(0)
        end,
      }

      lint.linters.eslint_d = require('lint.util').wrap(lint.linters.eslint_d, function(diagnostic)
        -- try to ignore "No ESLint configuration found" error
        -- if diagnostic.message:find("Error: No ESLint configuration found") then -- old version
        -- update: 20240814, following is working
        if diagnostic.message:find 'Error: Could not find config file' then
          return nil
        end
        return diagnostic
      end)

      lint.linters_by_ft = {
        markdown = { 'markdownlint' },
        typescript = { 'eslint_d' },
        javascript = { 'eslint_d' },
        yaml = { 'yamllint' },
        json = { 'jsonlint' },
        hurl = { 'hurllint' },
        -- groovy = { 'npm-groovy-lint' },
      }

      -- Create autocommand which carries out the actual linting
      -- on the specified events.
      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          require('lint').try_lint()
        end,
      })

      vim.keymap.set('n', '<leader>l', function()
        lint.try_lint()
      end, { desc = 'Trigger linting for current file' })
    end,
  },
}
