vim.keymap.set("n", "<leader>alm", ":Leet menu<CR>", { desc = "Menu" })
vim.keymap.set("n", "<leader>alc", ":Leet console<CR>", { desc = "opens console pop-up for currently opened question" })
vim.keymap.set(
  "n",
  "<leader>ali",
  ":Leet info<CR>",
  { desc = " opens a pop-up containing information about the currently opened question" }
)
vim.keymap.set(
  "n",
  "<leader>alt",
  ":Leet tabs<CR>",
  { desc = "opens a picker with all currently opened question tabs" }
)
vim.keymap.set("n", "<leader>als", ":Leet submit<CR>", { desc = "submit currently opened question" })
vim.keymap.set("n", "<leader>alo", ":Leet open<CR>", { desc = "opens the current question in a default browser" })

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
      language = "python",
      browser = "firefox",
    },
  },
}
