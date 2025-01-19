return {
  {
    "folke/noice.nvim",
    opts = {
      views = {
        popup = {
          backend = "popup",
          relative = "editor",
          enter = true,
          border = {
            style = "rounded",
            padding = { 1, 1 },
          },
          position = {
            row = "50%",
            col = "50%",
          },
          size = {
            width = 80,
            height = 20,
          },
          win_options = {
            winblend = 10,
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
            wrap = true, -- 启用换行
          },
        },
      },
      history = {
        enabled = true, -- 启用历史记录
        view = "popup", -- 使用浮动窗口显示历史记录
      },
    },
  },
}
