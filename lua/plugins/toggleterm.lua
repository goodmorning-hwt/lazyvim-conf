local get_project_root = require("config.utils").get_project_root
return {
  "akinsho/toggleterm.nvim",
  opts = {
    open_mapping = [[<C-\>]],
    direction = "float",
    float_opts = {
      border = "curved",
    },
    dir = get_project_root(),
  },

}
