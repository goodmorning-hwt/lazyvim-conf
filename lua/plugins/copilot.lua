vim.cmd([[
    autocmd FileType copilot.lua setlocal filetype=lua
]])

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>acpd", ":Copilot disable<CR>", opts)

map("n", "<leader>acpe", ":Copilot enable<CR>", opts)

map("n", "<leader>acph", ":Copilot help<CR>", opts)

return {}
