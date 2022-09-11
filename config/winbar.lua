local M = {}

local navic = require "nvim-navic"


vim.cmd [[
hi link EmptyWinbar NvimTreeNormal
]]

M.winbar_filetype_exclude = {
  "NvimTree",
}

local excludes = function()
  if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
    vim.opt_local.winbar = nil
    return true
  end
  return false
end

local function is_empty(s)
  return s == nil or s == ""
end

local function get_location()
  local location = navic.get_location()
  if not is_empty(location) then
    return "%#WinBarContext#" .. " " .. location
  end
  return ""
end

function M.get_winbar()
  if excludes() then
    return "%#EmptyWinbar#" .. ""
  end
  if navic.is_available() then
    return get_location()
  else
    return ""
  end
end

return M
