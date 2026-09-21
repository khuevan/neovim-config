-- Bufferline with dark theme matching Cursor
require("bufferline").setup({
  highlights = {
    background = { italic = true },
    buffer_selected = { bold = true, italic = false },
    indicator_selected = { fg = "#007ACC" },
    separator_selected = { fg = "#007ACC" },
  },
  options = {
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    diagnostics = "nvim_lsp",
    always_show_bufferline = false,
    separator_style = "thin",
    indicator = { style = "icon", icon = "▎" },
  },
})
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
