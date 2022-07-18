local utils = require("gruvbox.utils")

local M = {}

function M.load()
  if vim.version().minor < 7 then
    vim.api.nvim_err_writeln("gruvbox.nvim: you must use neovim 0.7 or higher")
    return
  end

  -- reset colors
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "gruvbox"
  vim.o.termguicolors = true

  utils.add_highlights(require("gruvbox.base"))
  utils.add_highlights(require("gruvbox.plugins"))
end

return M
