-- =============================================================================
-- Telescope Configuration (Fuzzy Finder)
-- =============================================================================

local telescope = require("telescope")
local actions = require("telescope._extensions.actions")

telescope.setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = "  ",
    path_display = { "smart" },
    file_ignore_patterns = {
      "node_modules",
      ".git",
      "__pycache__",
      "*.pyc",
      "target",
      "dist",
      ".venv",
      "venv",
      ".idea",
      ".vscode",
    },
    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,
        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["<CR>"] = actions.select_default,
        ["<C-s>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
      },
      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-s>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,
        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["?"] = actions.which_tags,
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
    },
    live_grep = {
      theme = "ivy",
    },
    buffers = {
      theme = "dropdown",
      previewer = false,
      initial_mode = "normal",
    },
    help_tags = {
      theme = "dropdown",
    },
    lsp_document_symbols = {
      theme = "dropdown",
    },
    lsp_workspace_symbols = {
      theme = "dropdown",
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})

-- Load extensions
pcall(telescope.load_extension, "fzf")
pcall(telescope.load_extension, "ui-select")

-- Keybindings
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope commands<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope lsp_workspace_symbols<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", { noremap = true, silent = true })
