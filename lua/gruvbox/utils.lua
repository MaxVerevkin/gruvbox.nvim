-- util functions
local M = {}

-- check if vim.g.gruvbox_* color exists in current palette, return default color
-- otherwise
M.get_color_from_var = function(color, default, colors)
  if color == nil then
    return default
  end

  local c = colors[color]
  if c == nil then
    print(string.format("%s color could not be found, using default", color))
    return default
  end
  return c
end

M.add_highlights = function(hls)
  for group, settings in pairs(hls) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
