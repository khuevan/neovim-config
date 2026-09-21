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
        },
        {
          desc = "Recent Files",
          key = "r",
          action = "Telescope oldfiles",
        },
        {
          desc = "Neovim Config",
          key = "c",
          action = "edit ~/.config/nvim/init.lua",
        },
        {
          desc = "Git",
          key = "g",
          action = "Neogit",
        },
        {
          desc = "Terminal",
          key = "t",
          action = "ToggleTerm",
        },
        {
          desc = "LSP & Tools",
          key = "m",
          action = "Mason",
        },
        {
          desc = "Keymaps",
          key = "k",
          action = "Telescope keymaps",
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
  