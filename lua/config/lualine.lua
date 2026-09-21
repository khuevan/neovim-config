require("lualine").setup({
  options = {
    theme = {
      normal = {
        a = { bg = "#007acc", fg = "#ffffff", gui = "bold" },
        b = { bg = "#3c3c3c", fg = "#d4d4d4" },
        c = { bg = "#1e1e1e", fg = "#d4d4d4" },
      },
      insert = {
        a = { bg = "#4ec9b0", fg = "#1e1e1e", gui = "bold" },
        b = { bg = "#3c3c3c", fg = "#d4d4d4" },
        c = { bg = "#1e1e1e", fg = "#d4d4d4" },
      },
      visual = {
        a = { bg = "#264f78", fg = "#ffffff", gui = "bold" },
        b = { bg = "#3c3c3c", fg = "#d4d4d4" },
        c = { bg = "#1e1e1e", fg = "#d4d4d4" },
      },
      replace = {
        a = { bg = "#f44747", fg = "#ffffff", gui = "bold" },
        b = { bg = "#3c3c3c", fg = "#d4d4d4" },
        c = { bg = "#1e1e1e", fg = "#d4d4d4" },
      },
      command = {
        a = { bg = "#c586c0", fg = "#1e1e1e", gui = "bold" },
        b = { bg = "#3c3c3c", fg = "#d4d4d4" },
        c = { bg = "#1e1e1e", fg = "#d4d4d4" },
      },
      inactive = {
        a = { bg = "#252526", fg = "#808080" },
        b = { bg = "#252526", fg = "#808080" },
        c = { bg = "#1e1e1e", fg = "#808080" },
      },
    },
    section_separators = { left = "", right = "" },
    component_separators = { left = "│", right = "│" },
    globalstatus = true,
    disabled_filetypes = { statusline = {}, winbar = {} },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = {
      {
        "diagnostics",
        symbols = {
          error = " ",
          warn = " ",
          info = " ",
          hint = "💡 ",
        },
      },
      "filename",
    },
    lualine_x = {
      {
        "diff",
        symbols = {
          added = " ",
          modified = " ",
          removed = " ",
        },
      },
      "filetype",
    },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
