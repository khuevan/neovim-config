require("nvim-tree").setup({
  view = {
    side = "left",
    width = 35,
    -- hide_root_folder = false,
  },
  renderer = {
    add_trailing = false,
    group_empty = true,
    full_name = false,
    highlight_git = false,
    highlight_opened_files = "name",
    highlight_modified = "icon",
    
    icons = {
      webdev_colors = true,
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
      },
    },
  },
  filters = {
    dotfiles = false,
    custom = { ".git", "node_modules", "__pycache__", "*.pyc" },
  },
  actions = {
    open_file = {
      window_picker = {
        chars = "1234567890",
      },
    },
  },
})
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- Cursor-like nvim-tree colors
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#252526", fg = "#cccccc" })
vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "#252526", fg = "#cccccc" })
vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#094e6e" })
vim.api.nvim_set_hl(0, "NvimTreeSelection", { bg = "#094e6e", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NvimTreeSelectionNC", { bg = "#094e6e", fg = "#cccccc" })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#007acc" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#3c3c3c" })
vim.api.nvim_set_hl(0, "NvimTreeSymlink", { fg = "#4ec9b0" })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#007acc", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#dcdcaa" })
vim.api.nvim_set_hl(0, "NvimTreeGitStaged", { fg = "#4ec9b0" })
vim.api.nvim_set_hl(0, "NvimTreeGitRenamed", { fg = "#4ec9b0" })
vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#4ec9b0" })
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#f44747" })
