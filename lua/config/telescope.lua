require("telescope").setup({
  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
    },
  },
})

-- File search
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

-- Workspace symbols (LSP)
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_workspace_symbols<cr>")
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope lsp_document_symbols<cr>")

-- Test files finder
vim.keymap.set("n", "<leader>ft", function()
  require("telescope.builtin").find_files({
    prompt_title = "Find Test Files",
    cwd = vim.fn.getcwd(),
    file_ignore_patterns = { "node_modules", ".git", "__pycache__", "target", "dist" },
    glob = "**/test*/**/*.py",
  })
end)
