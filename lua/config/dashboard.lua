-- Dashboard Configuration
local db = require("dashboard")

db.setup({
  theme = "doom",
  config = {
    header = {
      "",
      "",
      "",
      "█████                                                  ",
      "▒▒███                                                   ",
      " ▒███ █████ █████ █████  ██████   ████████   █████ █████",
      " ▒███▒▒███ ▒▒███ ▒▒███  ▒▒▒▒▒███ ▒▒███▒▒███ ▒▒███ ▒▒███ ",
      " ▒██████▒   ▒███  ▒███   ███████  ▒███ ▒███  ▒███  ▒███ ",
      " ▒███▒▒███  ▒▒███ ███   ███▒▒███  ▒███ ▒███  ▒▒███ ███  ",
      " ████ █████  ▒▒█████   ▒▒████████ ████ █████  ▒▒█████   ",
      "▒▒▒▒ ▒▒▒▒▒    ▒▒▒▒▒     ▒▒▒▒▒▒▒▒ ▒▒▒▒ ▒▒▒▒▒    ▒▒▒▒▒    ",
      "",
      "Khue Van • AI Engineer",
      "",
    },
    shortcut_mappings = {
      i = { fallback = false },
      n = { fallback = false },
    },

    center = {
      {
        desc = "Find Files",
        key = "f",
        action = "Telescope find_files",
        icon = "🔍 ",
      },
      {
        desc = "Recent Files",
        key = "r",
        action = "Telescope oldfiles",
        icon = "📁 ",
      },
      {
        desc = "Git Status",
        key = "g",
        action = "Neogit",
        icon = "📦 ",
      },
      {
        desc = "Terminal",
        key = "t",
        action = "ToggleTerm",
        icon = "💻 ",
      },
      {
        desc = "LSP & Tools",
        key = "m",
        action = "Mason",
        icon = "🛠️ ",
      },
      {
        desc = "Keymaps",
        key = "k",
        action = "Telescope keymaps",
        icon = "⌨️ ",
      },
    },

    packages = {},
    project = {},

    mru = {
      limit = 10,
      cwd = "~",
    },

    footer = {
      "",
      "chmod +x ~/.config/nvim 👀",
      "",
    },
  },
})

-- Customize dashboard colors to match Cursor
vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#007acc" })
vim.api.nvim_set_hl(0, "DashboardCenter", { fg = "#d4d4d4" })
vim.api.nvim_set_hl(0, "DashboardShortcut", { fg = "#4ec9b0" })
vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#808080" })
vim.api.nvim_set_hl(0, "DashboardIcon", { fg = "#007acc" })
  

-- Disable auto Telescope on dashboard
vim.api.nvim_create_autocmd("FileType", {
    pattern = "dashboard",
    callback = function()
      -- mini.indentscope
      vim.b.miniindentscope_disable = true
  
      -- indent-blankline
      pcall(function()
        require("ibl").setup_buffer(0, {
          enabled = false,
        })
      end)
  
      -- Hide │ and other whitespace characters
      vim.opt_local.list = false
    end,
})
  