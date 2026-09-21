-- =============================================================================
-- Personal Neovim Configuration
-- For: khue van - AI Engineer
-- Author: kvanv
-- =============================================================================

-- Load general options first
require("config.options")

-- Bootstrap lazy.nvim
require("config.lazy")

-- Load plugin configurations
require("config.lsp")
require("config.mason")
require("config.tokyonight")
require("config.lualine")
require("config.bufferline")
require("config.nvim-tree")
require("config.telescope")
require("config.treesitter")
require("config.cmp")
require("config.gitsigns")
require("config.neogit")
require("config.whichkey")
require("config.comment")
require("config.flash")
require("config.todo-comments")
require("config.toggleterm")
require("config.lazygit")
require("config.indent-blankline")
require("config.dashboard")
require("config.conform")
require("config.iron")
require("config.rust-tools")
require("config.pytest")
require("config.virtualenv")
require("config.jupyter")
