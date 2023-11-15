local M = {}
local has = vim.fn.has

function M.is_mac()
  return has 'macunix'
end

function M.is_win()
  return has 'win32'
end

return M
