-- GitSigns with Cursor/VSCode-like colors
require("gitsigns").setup({
  signs = {
    add = { text = "▎", hl = "GitSignsAdd" },
    change = { text = "▎", hl = "GitSignsChange" },
    delete = { text = "▎", hl = "GitSignsDelete" },
    topdelete = { text = "▎", hl = "GitSignsDelete" },
    changedelete = { text = "▎", hl = "GitSignsChange" },
    untracked = { text = "▎", hl = "GitSignsAdd" },
  },
  signcolumn = true,
  numhl = false,
  linehl = false,
  word_diff = false,
  watch_gitdir = {
    interval = 1000,
    follow_files = true,
  },
  attach_to_untracked = true,
  current_line_blame = false,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol",
    delay = 500,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = "<author>",
})

-- Cursor-like git signs colors
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#4ec9b0", bg = "#1e1e1e" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#4ec9b0", bg = "#1e1e1e" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#f44747", bg = "#1e1e1e" })
vim.api.nvim_set_hl(0, "GitSignsAddNr", { fg = "#4ec9b0", bg = "#1e1e1e" })
vim.api.nvim_set_hl(0, "GitSignsChangeNr", { fg = "#dcdcaa", bg = "#1e1e1e" })
vim.api.nvim_set_hl(0, "GitSignsDeleteNr", { fg = "#f44747", bg = "#1e1e1e" })
