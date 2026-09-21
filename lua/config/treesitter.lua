-- =============================================================================
-- Treesitter Configuration
-- =============================================================================

require("nvim-treesitter").setup({
  ensure_installed = { "python", "rust", "lua", "toml", "yaml", "json", "html", "css", "javascript", "typescript", "markdown", "bash" },
  highlight = { enable = true },
  indent = { enable = true },
  textobjects = {
    enable = true,
    keymaps = {
      ["af"] = "@function.outer",
      ["if"] = "@function.inner",
      ["ac"] = "@class.outer",
      ["ic"] = "@class.inner",
    },
  },
})
