local ok, tree = pcall(require, 'nvim-tree')
if not ok then return end

tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  view = {
    number = true,
    relativenumber = true,
  },
  filters = {
    custom = { ".git", "node_modules" },
  },
}
