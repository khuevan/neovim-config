return {
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
  { "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "nvim-tree/nvim-tree.lua", dependencies = "nvim-tree/nvim-web-devicons" },
  { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "hrsh7th/nvim-cmp", dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" } },
  { "lewis6991/gitsigns.nvim" },
  { "NeogitOrg/neogit", dependencies = "nvim-lua/plenary.nvim" },
  { "folke/which-key.nvim" },
  { "numToStr/Comment.nvim" },
  { "folke/flash.nvim" },
  { "folke/todo-comments.nvim" },
  { "mbbill/undotree" },
  { "akinsho/toggleterm.nvim" },
  { "kdheepak/lazygit.nvim" },

  -- Formatters
  { "stevearc/conform.nvim" },                           -- Modern formatter

  -- Rust Tools
  { "simrat39/rust-tools.nvim" },                        -- Rust tools

  -- Python Tools
  { "Vigemus/iron.nvim" },                               -- Python REPL

  -- UI Improvements
  { "glepnir/dashboard-nvim" },                          -- Dashboard
}
