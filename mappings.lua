---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["C-h"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["C-l"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["C-j"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["C-k"] = { "<cmd> TmuxNavigateUp", "window up" },
  },
}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
  },
}

M.comment = {
  plugin = true,

  -- toggle comment in both modes
  n = {
    ["gc"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "toggle comment",
    },
  },

  v = {
    ["gc"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "toggle comment",
    },
  },
}
-- more keybinds!

return M
