local ok, term = pcall(require, 'toggleterm')
if not ok then return end

term.setup({
  shell = vim.o.shell,
  direction = 'tab',
})
