require("toggleterm").setup({
  shell = "powershell.exe",
})
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")
