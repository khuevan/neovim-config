-- =============================================================================
-- Indent Blankline Configuration
-- =============================================================================

require("ibl").setup({
  indent = {
    char = "▏",
    highlight = "IblIndent",
  },
  whitespace = {
    highlight = "IblWhitespace",
    remove_blankline_trail = false,
  },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
    injected_languages = true,
    highlight = "IblScope",
    include = {
      node_type = {},
    },
    exclude = {
      filetype = { "dashboard", "alpha", "starter" },
    },
  },
  exclude = {
    filetype = { "qf", "help", "dashboard", "lazy", "mason", "notify" },
    buftype = { "terminal", "nofile", "quickfix" },
  },
})
