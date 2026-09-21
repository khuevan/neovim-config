-- Iron.nvim Configuration for Python REPL
require("iron.core").setup({
  should_map_plug = false,
  highlight_trailing_whitespace = true,
  scratch_replace_visual_unless_ranking_in_cmdline = true,
  repl_open_cmd = "botright 15split",
})

-- Iron REPL keybindings
vim.keymap.set("n", "<leader>rr", "<cmd>IronRepl<cr>", { noremap = true, silent = true, desc = "Open REPL" })
vim.keymap.set("n", "<leader>rc", "<cmd>IronSendMotion<cr>", { noremap = true, silent = true, desc = "Send motion to REPL" })
vim.keymap.set("v", "<leader>rc", "<cmd>IronVisualSend<cr>", { noremap = true, silent = true, desc = "Send selection to REPL" })
