-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>fd", ":edit ~/.config/nvim/<CR>", { desc = "Edit Neovim Config" })

vim.keymap.set("n", "<leader>td", function()
  local current = vim.diagnostic.is_enabled()
  if current then
    vim.diagnostic.enable(false)
  else
    vim.diagnostic.enable(true)
  end
end, { desc = "Toggle Diagnostics" })

local disable_diagnostics_path = ".local/share/nvim/leetcode/"

-- Function to toggle diagnostics based on file path
local function toggle_diagnostics()
  local bufname = vim.api.nvim_buf_get_name(0)
  if bufname:find(disable_diagnostics_path, 1, true) then
    vim.diagnostic.enable(false)
  else
    vim.diagnostic.enable()
  end
end

-- Create an autocommand group
vim.api.nvim_create_augroup("ToggleDiagnostics", { clear = true })

-- Set up autocommand to trigger on BufRead and BufEnter
vim.api.nvim_create_autocmd({ "BufRead", "BufEnter" }, {
  group = "ToggleDiagnostics",
  callback = toggle_diagnostics,
})
