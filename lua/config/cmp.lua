require("cmp").setup({
  snippet = { expand = function(args) require("luasnip").lsp_expand(args.body) end },
  mapping = require("cmp").mapping.preset.insert({
    ["<C-b>"] = require("cmp").mapping.scroll_docs(-4),
    ["<C-f>"] = require("cmp").mapping.scroll_docs(4),
    ["<C-Space>"] = require("cmp").mapping.complete(),
    ["<CR>"] = require("cmp").mapping.confirm({ select = false }),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer", keyword_length = 3 },
  },
})
