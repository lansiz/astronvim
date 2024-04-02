local function ui_notify(str)
  if vim.g.ui_notifications_enabled then require("astrocore").notify(str) end
end

local utils = {}

function utils.toggle_colorcolumn()
  local max_length = "80"
  local colorcolumn = vim.opt.colorcolumn:get()[1]
  if colorcolumn == nil or colorcolumn == "0" then
    vim.opt.colorcolumn = max_length
    colorcolumn = max_length
  else
    vim.opt.colorcolumn = ""
    colorcolumn = "0"
  end
  ui_notify(string.format("colorcolumn %s", colorcolumn))
end

function utils.show_filepath() ui_notify(string.gsub(vim.api.nvim_buf_get_name(0), "^/home/[^/]+/", "~/", 1)) end

return utils
