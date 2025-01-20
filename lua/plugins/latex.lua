return {
  -- 加载 luasnip 插件
  "L3MON4D3/LuaSnip",
  dependencies = {
    -- 加载 luasnip-latex-snippets.nvim 插件
    {
      "iurimateus/luasnip-latex-snippets.nvim",
      config = function()
        require("luasnip-latex-snippets").setup()
      end,
    },
  },
  opts = {
    history = true,
    updateevents = "TextChanged,TextChangedI",
  },
  config = function(_, opts)
    require("luasnip").setup(opts)
  end,
}
