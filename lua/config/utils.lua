local function get_project_root()
  -- 如果启用了 LSP，获取第一个工作区的根目录
  local lsp = vim.lsp
  if lsp.get_clients() and lsp.get_clients()[1] then
    return lsp.get_clients()[1].config.root_dir
  end

  -- 如果未启用 LSP，尝试用 `project.nvim` 提供的根目录
  if pcall(require, "project_nvim.project") then
    local project = require("project_nvim.project")
    return project.get_project_root()
  end

  -- 最后尝试用 Neovim 的当前工作目录
  return vim.fn.getcwd()
end

-- 以表的形式导出模块
return {
  get_project_root = get_project_root,
}
