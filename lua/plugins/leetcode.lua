vim.keymap.set("n", "<leader>alm", ":Leet menu<CR>", { desc = "Menu" })
vim.keymap.set("n", "<leader>alc", ":Leet console<CR>", { desc = "Console" })
vim.keymap.set("n", "<leader>ali", ":Leet info<CR>", { desc = "Info" })
vim.keymap.set("n", "<leader>alt", ":Leet tabs<CR>", { desc = "pick opened question tabs" })
vim.keymap.set("n", "<leader>als", ":Leet submit<CR>", { desc = "submit currently opened question" })
vim.keymap.set("n", "<leader>alo", ":Leet open<CR>", { desc = "opens in browser" })
vim.keymap.set("n", "<leader>all", ":Leet lang<CR>", { desc = "change lang" })

return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
      "nvim-telescope/telescope.nvim",
      -- "ibhagwan/fzf-lua",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      -- configuration goes here
      -- browser = "firefox",
      --
      lang = "python3",
      cn = { -- leetcode.cn
        enabled = false, ---@type boolean
        -- translator = true, ---@type boolean
        -- translate_problems = true, ---@type boolean
      },
    },
  },
}
