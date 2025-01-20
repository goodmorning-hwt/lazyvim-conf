local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- :CopilotChat <input>? - Open chat window with optional input
keymap("n", "<leader>acca", ":CopilotChat<Space>", opts)
-- :CopilotChatOpen - Open chat window
keymap("n", "<leader>acco", ":CopilotChatOpen<CR>", opts)
-- :CopilotChatClose - Close chat window
keymap("n", "<leader>accc", ":CopilotChatClose<CR>", opts)
-- :CopilotChatToggle - Toggle chat window
keymap("n", "<leader>acct", ":CopilotChatToggle<CR>", opts)
-- :CopilotChatStop - Stop current copilot output
keymap("n", "<leader>accs", ":CopilotChatStop<CR>", opts)
-- :CopilotChatReset - Reset chat window
keymap("n", "<leader>accr", ":CopilotChatReset<CR>", opts)
-- :CopilotChatSave <name>? - Save chat history to file
keymap("n", "<leader>accw", ":CopilotChatSave<Space>", opts)
-- :CopilotChatLoad <name>? - Load chat history from file
keymap("n", "<leader>accl", ":CopilotChatLoad<Space>", opts)
-- :CopilotChatDebugInfo - Show debug information
keymap("n", "<leader>accd", ":CopilotChatDebugInfo<CR>", opts)
-- :CopilotChatModels - View and select available models
keymap("n", "<leader>accm", ":CopilotChatModels<CR>", opts)

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
