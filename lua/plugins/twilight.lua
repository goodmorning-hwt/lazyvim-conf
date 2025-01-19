return {
  "folke/twilight.nvim",
  opts = {
    dimming = {
      alpha = 0.25, -- 非聚焦部分的透明度（数值越低，越清晰）
      color = { "Normal", "#ffffff" }, -- 设置背景颜色或链接到已有的高亮组
      inactive = false, -- 让非聚焦部分保持语法高亮
    },
    context = 10, -- 显示上下文的行数
    treesitter = true, -- 启用 Treesitter 支持
    expand = { -- 定义聚焦的代码块范围
      "function",
      "method",
      "class",
    },
  },
}
