-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
for i = 1, 9, 1 do
  vim.keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = { "*" },
  callback = function()
    if vim.fn.line "'\"" > 1 and vim.fn.line "'\"" <= vim.fn.line "$" then
      vim.api.nvim_exec("normal! g'\"", false)
    end
  end,
})


