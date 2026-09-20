-- =============================================================================
-- Flash.nvim Configuration (Enhanced navigation)
-- =============================================================================

require("flash").setup({
  labels = "asdfghjklqwertyuiopzxcvbnm",
  search = {
    forward = true,
    multi_window = true,
    wrap = false,
    mode = "fuzzy",
    incremental = false,
  },
  jump = {
    autojump = false,
    save_jump_to_mark = true,
  },
  modes = {
    char = {
      enabled = true,
      -- dynamic configuration for ft'ers
      config = function(opts)
        -- don't search on these keypresses
        opts.keys = { [";"] = false }
        -- set to nil or false to disable
        opts.multi_line = true
        opts.label = { style = "underline" }
      end,
      -- by default, these keys advance to the next label
      -- `false` to only jump on `labels`
      advance = true,
      keys = "fFtT",
      search = { wrap = false },
    },
    search = {
      enabled = false,
    },
    treesitter = {
      labels = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
      labels = {
        "a",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "i",
        "j",
        "k",
        "l",
        "m",
        "n",
        "o",
        "p",
        "q",
        "r",
        "s",
        "t",
        "u",
        "v",
        "w",
        "x",
        "y",
        "z",
        "A",
        "B",
        "C",
        "D",
        "E",
        "F",
        "G",
        "H",
        "I",
        "J",
        "K",
        "L",
        "M",
        "N",
        "O",
        "P",
        "Q",
        "R",
        "S",
        "T",
        "U",
        "V",
        "W",
        "X",
        "Y",
        "Z",
      },
    },
  },
  options = {
    highlight = {
      backdrop = true,
      matches = true,
      priority = 2,
      groups = {
        match = "FlashMatch",
        current = "FlashCurrent",
        backdrop = "FlashBackdrop",
        label = "FlashLabel",
      },
    },
    label = {
      style = "none",
      minlength = 2,
      underline = false,
      suffix = "",
    },
  },
})

-- Keybindings
vim.keymap.set({ "n", "x", "o" }, "s", function()
  require("flash").jump()
end)
vim.keymap.set({ "n", "x", "o" }, "S", function()
  require("flash").treesitter()
end)
vim.keymap.set({ "c" }, "<c-s>", function()
  require("flash").toggle()
end)
