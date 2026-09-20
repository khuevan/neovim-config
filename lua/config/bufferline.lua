-- =============================================================================
-- Bufferline Configuration
-- =============================================================================

require("bufferline").setup({
  options = {
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    diagnostics = "nvim-lsp",
    always_show_bufferline = true,
    diagnostics_indicator = function(_, _, diag)
      local icons = { error = "E", warn = "W", info = "I", hint = "H" }
      local ret = (diag.error and icons.error .. diag.error .. " " or "")
        .. (diag.warning and icons.warn .. diag.warning or "")
        .. (diag.hint and icons.hint .. diag.hint or "")
      return vim.trim(ret)
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "Explorer",
        text_align = "center",
        separator = true,
      },
    },
    separator_style = "thin",
    indicator = {
      style = "icon",
      icon = "▎",
    },
    buffer_close_icon = "×",
    modified_icon = "●",
    close_icon = "×",
    left_trunc_marker = "◀",
    right_trunc_marker = "▶",
  },
  highlights = {
    buffer_selected = {
      italic = false,
    },
  },
})

-- Keybindings for buffer navigation
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bdelete!<CR>", { noremap = true, silent = true })
