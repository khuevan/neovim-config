-- =============================================================================
-- Plugin List - Python & Rust Development
-- =============================================================================

return {

  -- ===========================================================================
  -- Core / UI
  -- ===========================================================================

  -- Colorscheme - Tokyo Night (dark theme)
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("config.tokyonight")
    end,
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.lualine")
    end,
  },

  -- Tabline
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("config.bufferline")
    end,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("config.indent-blankline")
    end,
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("config.nvim-tree")
    end,
  },

  -- File browser (optional enhancement)
  {
    "stevearc/oil.nvim",
    config = function()
      require("config.oil")
    end,
  },

  -- ===========================================================================
  -- Fuzzy Finding & Search
  -- ===========================================================================

  -- Telescope - Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("config.telescope")
    end,
  },

  -- Flash - Jump with hints
  {
    "folke/flash.nvim",
    config = function()
      require("config.flash")
    end,
  },

  -- ===========================================================================
  -- LSP & Language Support
  -- ===========================================================================

  -- LSP Config (built-in but enhanced)
  {
    "neovim/nvim-lspconfig",
    dependencies = "williamboman/mason.nvim",
    config = function()
      require("config.lsp")
    end,
  },

  -- Mason - LSP/DAP formatter manager
  {
    "williamboman/mason.nvim",
    config = function()
      require("config.mason")
    end,
  },

  -- Mason LSP Config bridge
  {
    "williamboman/mason-lspconfig.nvim",
  },

  -- LSP Lines (virtual text decorations)
  {
    "https://git.sr.ht/~whynote/lsp-lines.nvim",
    config = function()
      require("lsp-lines").setup()
    end,
  },

  -- ===========================================================================
  -- Python Support
  -- ===========================================================================

  -- Python-specific LSP config
  {
    "mfussenegger/nvim-dap-python",
    dependencies = "mfussenegger/nvim-dap",
  },

  -- Python formatting
  {
    "vitalihirz/ruff-python-lsp",
  },

  -- ===========================================================================
  -- Rust Support
  -- ===========================================================================

  -- rust-tools for enhanced Rust support
  {
    "simrat39/rust-tools.nvim",
    dependencies = "neovim/nvim-lspconfig",
    config = function()
      require("config.rust-tools")
    end,
  },

  -- rustfmt configuration
  {
    "rust-lang/rustfmt",
  },

  -- ===========================================================================
  -- Completion & Snippets
  -- ===========================================================================

  -- nvim-cmp - Completion engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("config.cmp")
    end,
  },

  -- ===========================================================================
  -- Treesitter - Syntax Highlighting
  -- ===========================================================================

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("config.treesitter")
    end,
  },

  -- Treesitter context (sticky context headers)
  {
    "nvim-treesitter/nvim-treesitter-context",
  },

  -- Treesitter textobjects
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },

  -- ===========================================================================
  -- Git Integration
  -- ===========================================================================

  -- Neogit - Git TUI
  {
    "NeogitOrg/neogit",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("config.neogit")
    end,
  },

  -- Gitsigns
  {
    "lewis6991/gitsigns.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("config.gitsigns")
    end,
  },

  -- ===========================================================================
  -- Utilities
  -- ===========================================================================

  -- Which-key (keybinding hints)
  {
    "folke/which-key.nvim",
    config = function()
      require("config.whichkey")
    end,
  },

  -- Comment toggle
  {
    "numToStr/Comment.nvim",
    config = function()
      require("config.comment")
    end,
  },

  -- Surround text objects
  {
    "kylechui/nvim-surround",
    version = "*",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- Harpoon - Quick file navigation
  {
    "ThePrimeagen/harpoon",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("config.harpoon")
    end,
  },

  -- Undo tree
  {
    "mbbill/undotree",
  },

  -- Terminal integration
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("config.toggleterm")
    end,
  },

  -- Todo comments
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("config.todo-comments")
    end,
  },

  -- LazyGit integration
  {
    "kdheepak/lazygit.nvim",
    config = function()
      require("config.lazygit")
    end,
  },

  --==============================================================================
  -- AI / LLM Integration (Optional - for AI Engineer workflow)
  --==============================================================================

  -- Codeium (free AI completion)
  {
    "Exafunction/codeium.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("config.codeium")
    end,
  },

}
