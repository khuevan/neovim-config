-- =============================================================================
-- Neogit Configuration (Git TUI)
-- =============================================================================

require("neogit").setup({
  disable_hint = false,
  disable_context_highlighting = false,
  disable_commit_confirmation = false,
  disable_builtin_notifications = false,
  disable_sign_column = false,
  use_per_project_settings = true,
  remember_settings = true,
  auto_refresh = true,
  sort_branch_order = {
    "main",
    "master",
  },
  ignored_settings = {
    "FzfPrettyClippy",
  },
  use_magit_popup = {
    featured = {
      "P", -- Pull
      "p", -- Push
    },
  },
  commit_editor = {
    kind = "split",
  },
  commit_select_view = {
    kind = "tab",
  },
  commit_view = {
    kind = "split",
    verbose = true,
  },
  diff_editor = {
    kind = "split",
  },
  integration = {
    fzf_pretty_clippy = {
      enabled = true,
    },
  },
})

vim.keymap.set("n", "<leader>gg", function()
  require("neogit").open()
end, { noremap = true, silent = true, desc = "Open Neogit" })
