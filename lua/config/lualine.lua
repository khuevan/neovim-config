-- =============================================================================
-- Lualine Configuration
-- =============================================================================

require("lualine").setup({
  options = {
    theme = "tokyonight",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    globalstatus = true,
    disabled_filetypes = { statusline = {}, winbar = {} },
    always_divide_middle = true,
    always_show_tabline = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = {
      {
        "diagnostics",
        symbols = {
          error = "E ",
          warn = "W ",
          info = "I ",
          hint = "H ",
        },
      },
      { "diff" },
    },
    lualine_x = {
      {
        "filetype",
        icon_only = true,
        padding = { left = 1, right = 1 },
      },
      "filename",
      "encoding",
      "fileformat",
    },
    lualine_y = {
      {
        "progress",
        fmt = function(content)
          return content == "[no Name]" and "Empty" or content
        end,
      },
      { "location", padding = { left = 1, right = 1 } },
    },
    lualine_z = {
      function()
        return " "
      end,
      function()
        local b = vim.bo
        if b.filetype == "python" then
          local venv = os.getenv("VIRTUAL_ENV")
          if venv then
            return "Py: " .. vim.fn.fnamemodify(venv, ":t")
          end
        elseif b.filetype == "rust" then
          return "Rs"
        elseif b.filetype == "lua" then
          return "Lua"
        end
        return ""
      end,
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})
