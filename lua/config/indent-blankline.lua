-- Indent Blankline v3 Configuration - Cursor style
require("ibl").setup({
  indent = {
    char = "│",
    highlight = "IndentBlanklineChar",
  },
  scope = {
    enabled = false,
  },
  exclude = {
    filetypes = {
      "dashboard",
      "NvimTree",
      "packer",
      "telescope",
      "Trouble",
      "lazy",
    },
  },
})

-- Cursor-like indent colors
vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#3c3c3c", nocombine = true })
vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = "#007acc", nocombine = true })
