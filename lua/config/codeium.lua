-- =============================================================================
-- Codeium Configuration (AI Code Completion)
-- =============================================================================

require("codeium").setup({
  enable_chat = true,
  chat_popup_window = {
    border = "rounded",
    -- layout = "rightbelow",
  },
})

-- Keybindings
vim.keymap.set("i", "<Tab>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-l>", function()
  return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-h>", function()
  return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-x>", function()
  return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })

vim.keymap.set("i", "<c-s>", function()
  return vim.fn["codeium#AcceptWord"]()
end, { expr = true, silent = true })
