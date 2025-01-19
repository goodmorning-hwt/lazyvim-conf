return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fp",

      function()
        require("telescope.builtin").live_grep()
      end,

      desc = "Telescope live grep",
    },
  },
}
