-- =============================================================================
-- Todo Comments Configuration
-- =============================================================================

require("todo-comments").setup({
  signs = true,
  sign_priority = 8,
  keywords = {
    FIX = {
      icon = "🔧 ",
      color = "error",
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
    },
    TODO = { icon = "📋 ", color = "info" },
    HACK = { icon = "🪓 ", color = "warning" },
    WARN = { icon = "⚠️ ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = "⚡ ", color = "perf", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = "📝 ", color = "hint", alt = { "INFO", "NOTICE" } },
    TEST = { icon = "🧪 ", color = "test", alt = { "TESTING", "TEST" } },
  },
  gui_style = {
    fg = "NONE",
    bg = "BOLD",
    gui = "NONE",
  },
  merge_keywords = true,
  highlight = {
    multiline = true,
    multiline_pattern = "..",
    before = "",
    keyword = "wide_bg",
    after = "fg",
    pattern = [[.*<(KEYWORDS)\s*:]],
    comments_only = true,
    max_line_len = 400,
    exclude = {},
  },
  list = {
    keywords = {
      FIX = { icon = "🔧 ", color = "error", after = "" },
      TODO = { icon = "📋 ", color = "info", after = "" },
      HACK = { icon = "🪓 ", color = "warning", after = "" },
      WARN = { icon = "⚠️ ", color = "warning", after = "" },
      PERF = { icon = "⚡ ", color = "perf", after = "" },
      NOTE = { icon = "📝 ", color = "hint", after = "" },
      TEST = { icon = "🧪 ", color = "test", after = "" },
    },
  },
})

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { noremap = true, silent = true, desc = "Next todo" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { noremap = true, silent = true, desc = "Previous todo" })

vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { noremap = true, silent = true, desc = "Todo Telescope" })
