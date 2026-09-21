require("tokyonight").setup({
  style = "night",
  -- Cursor-like colors
  colors = {
    -- Match Cursor's dark background
    bg = "#1e1e1e",
    bg_dark = "#1e1e1e",
    bg_float = "#252526",
    bg_nc = "#1e1e1e",
    bg_search = "#264f78",
    bg_sidebar = "#252526",
    bg_statusline = "#007acc",
    bg_tabline = "#1e1e1e",
    bg_visual = "#264f78",

    -- Text colors
    fg = "#d4d4d4",
    fg_dark = "#808080",
    fg_float = "#cccccc",
    fg_sidebar = "#cccccc",

    -- Cursor accent blue
    blue = "#007acc",
    cyan = "#4ec9b0",
    purple = "#c586c0",
    green = "#4ec9b0",
    orange = "#ce9178",
    yellow = "#dcdcaa",
    red = "#f44747",

    -- Borders and highlights
    border = "#3C3C3C",
    pumblend = 20,
    blend = 20,
  },
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
  },
  sidebars = { "qf", "help", "terminal", "packer", "NvimTree", "lazy" },
  day_brightness = 0.3,
  hide_inactive_statusline = false,
  dim_inactive = false,
  lualine_bold = true,
})

vim.cmd("colorscheme tokyonight")
