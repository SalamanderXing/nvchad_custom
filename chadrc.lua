---@type ChadrcConfig
local M = {}

--require("possession").setup{}
--require("telescope").load_extension "possession"
--vim.keymap.set("n", "<C-a>", function()
--  require("telescope").extensions.possession.list()
--end)
-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  tabufline = {
    show_numbers = true
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- sets relative line numbers
vim.opt.relativenumber = true

return M
