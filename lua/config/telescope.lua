require("telescope").setup({
  pickers = {
    find_files = {
      hidden = true,
      no_ignore = true,
      no_ignore_parent = true,
      follow = true,
    },
  },
  defaults = {
    file_ignore_patterns = {
      "node_modules", ".git", "__pycache__", "target", "dist", "build",
      "vendor", "venv", ".venv", "env", ".env",
      "%.o", "%.a", "%.so", "%.dll", "%.exe",
      "%.lock", "package%-lock.json", "yarn.lock", "pnpm-lock.yaml",
      ".next", ".nuxt", ".output", ".cache", ".tmp",
      "_site", "public", "static", ".min.js", ".min.css",
    },
  },
  extensions = {
    project = { 
      base_dirs = {
        "D:\\projects",
      },
      hidden_files = true,
      theme = "dropdown",
    },
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
    },
  },
})

-- Load telescope-project extension
require("telescope").load_extension("project")

-- File search - use builtin for full options
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files({
    hidden = true,
    no_ignore = true,
    no_ignore_parent = true,
  })
end)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope project<cr>")

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
