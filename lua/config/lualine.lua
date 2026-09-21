require("lualine").setup({
  options = {
    theme = "tokyonight",
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
    globalstatus = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff" },
    lualine_c = { "filename" },
    lualine_x = { "diagnostics", "lsp_progress", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
