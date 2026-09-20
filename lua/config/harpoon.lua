-- =============================================================================
-- Harpoon Configuration (Quick file navigation)
-- =============================================================================

require("harpoon").setup({
  global_settings = {
    save_on_toggle = false,
    save_on_change = true,
    enter_on_save = true,
    tmux_autoclose_windows = false,
    mark_branch = false,
    persistent_hide = false,
  },
  menu = {
    config = {
      title = "Harpoon Files",
      width = 60,
      height = 10,
      border = "rounded",
    },
    items = {
      { type = "text", title = "1:", file = "" },
      { type = "text", title = "2:", file = "" },
      { type = "text", title = "3:", file = "" },
      { type = "text", title = "4:", file = "" },
      { type = "text", title = "5:", file = "" },
    },
  },
  port_bank_hosts = {},
})

-- Keybindings for harpoon
vim.keymap.set("n", "<leader>ha", function()
  require("harpoon.mark").add_file()
end, { noremap = true, silent = true, desc = "Harpoon add file" })

vim.keymap.set("n", "<leader>hh", function()
  require("harpoon.ui").toggle_quick_menu()
end, { noremap = true, silent = true, desc = "Harpoon menu" })

vim.keymap.set("n", "<leader>h1", function()
  require("harpoon.ui").nav_file(1)
end, { noremap = true, silent = true, desc = "Harpoon nav 1" })

vim.keymap.set("n", "<leader>h2", function()
  require("harpoon.ui").nav_file(2)
end, { noremap = true, silent = true, desc = "Harpoon nav 2" })

vim.keymap.set("n", "<leader>h3", function()
  require("harpoon.ui").nav_file(3)
end, { noremap = true, silent = true, desc = "Harpoon nav 3" })

vim.keymap.set("n", "<leader>h4", function()
  require("harpoon.ui").nav_file(4)
end, { noremap = true, silent = true, desc = "Harpoon nav 4" })
