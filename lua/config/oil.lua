-- =============================================================================
-- Oil.nvim Configuration (file manager in current buffer)
-- =============================================================================

require("oil").setup({
  columns = {
    "icon",
  },
  keymaps = {
    ["g?"] = "actions.show_help",
    ["<CR>"] = "actions.select",
    ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
    ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
    ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in a new tab" },
    ["<C-p>"] = "actions.preview",
    ["q"] = "actions.close",
    ["r"] = "actions.refresh",
    ["-"] = "actions.parent",
    ["_"] = "actions.open_cwd",
    ["`"] = "actions.cd",
    ["~"] = { "actions.cd", opts = { scope = "tilde" }, desc = ":tilde:~" },
    ["gs"] = "actions.change_sort",
    ["gx"] = "actions.open_external",
    ["g."] = "actions.toggle_hidden",
  },
  use_default_keymaps = false,
  view_options = {
    show_hidden = true,
    sort = {
      { "type", "asc" },
      { "name", "asc" },
    },
  },
  float = {
    padding = 2,
    max_width = 50,
    max_height = 50,
    border = "rounded",
    win_options = {
      winblend = 0,
    },
  },
  popup = {
    max_width = 50,
    max_height = 50,
    border = "rounded",
    win_options = {
      winblend = 0,
    },
  },
  preview = {
    max_width = "50%",
    min_width = { 40, 0.3 },
    max_height = "50%",
    min_height = { 5, 0.1 },
    border = "rounded",
    win_options = {
      winblend = 0,
    },
  },
})
