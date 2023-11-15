local ok, tomato = pcall(require, 'tomato')
if not ok then return end

tomato.setup({
  chunk = 2,
  round = 1,
  short_break = 1,
  long_break = 2,
})
