-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true

-- 设置自动命令：当目录变化时检查并停止 LSP 客户端
vim.api.nvim_create_autocmd("DirChanged", {
  pattern = "*", -- 监听所有目录变化
  callback = function()
    local current_dir = vim.fn.getcwd() -- 获取当前目录
    if string.find(current_dir, "/.local/share/nvim/leetcode/") then
      -- 停止所有活动的 LSP 客户端
      for _, client in ipairs(vim.lsp.get_active_clients()) do
        vim.lsp.stop_client(client.id)
      end
    end
  end,
})
