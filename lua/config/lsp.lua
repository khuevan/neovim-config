-- LSP Configuration

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "rust_analyzer", "lua_ls", "jsonls", "yamlls", "html", "cssls", "bashls", "taplo" },
  handlers = {
    function(server_name)
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
      end
      require("lspconfig")[server_name].setup({ capabilities = capabilities, on_attach = on_attach })
    end,
  },
})

vim.diagnostic.config({ float = { border = "rounded" } })
