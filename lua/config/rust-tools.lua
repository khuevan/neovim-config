-- =============================================================================
-- Rust-tools Configuration (Enhanced Rust Development)
-- =============================================================================

local rt = require("rust-tools")

rt.setup({
  tools = {
    executor = require("rust-tools.executors").toggleterm,
    reload_workspace_from_cargo_toml = true,
    runnables = {
      use_telescope = true,
    },
    inlay_hints = {
      auto = true,
      only_current_line = false,
      show_parameter_hints = true,
      parameter_hints_prefix = "<-",
      other_hints_prefix = "=>",
      max_len_align = false,
      max_len_align_padding = 1,
      right_align = false,
      right_align_padding = 7,
      highlight = "Comment",
    },
    hover_actions = {
      auto_frames = true,
      border = "rounded",
      max_width = nil,
      max_height = nil,
      modify_font-sizing = 14,
      modify_font_family = "JetBrains Mono",
    },
    hover_range = {
      max_length = 200,
    },
  },
  server = {
    on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }

      -- Standard LSP keybindings
      vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
      vim.keymap.set("n", "<Leader>a", rt.hover_actions.run_hover_actions, { buffer = bufnr })

      -- Rust-specific keybindings
      vim.keymap.set("n", "<leader>rr", function()
        rt.runnables.runnables()
      end, opts)

      vim.keymap.set("n", "<leader>rc", function()
        rt.expand_macro.expand_macro()
      end, opts)

      vim.keymap.set("n", "<leader>rd", function()
        rt.open_cargo_toml.open_cargo_toml()
      end, opts)

      vim.keymap.set("n", "<leader>rm", ":RustExpandMacro<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>ra", ":RustCodeAction<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>ro", ":RustOpenCargo<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rs", ":RustSSR<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rp", ":RustParentModule<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rb", ":RustBuild<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rcb", ":RustBuildBench<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rcc", ":RustClearCargo<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rj", ":RustJoinLines<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rq", ":RustMoveItemDown<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rw", ":RustMoveItemUp<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rt", ":RustToggleInlayHints<CR>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>rx", ":RustStop<CR>", { buffer = bufnr })

      -- DAP integration
      vim.keymap.set("n", "<F5>", ":RustDebuggables<CR>", { buffer = bufnr })
    end,
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
          loadOutDirsFromCheck = true,
          runBuildScripts = true,
        },
        checkOnSave = {
          command = "clippy",
          allTargets = true,
        },
        procMacro = {
          enable = true,
        },
        imports = {
          prefix = "self",
        },
      },
    },
  },
  dap = {
    adapter = require("rust-tools.dap").get_codelldb_adapter(
      "C:\\Users\\ADMIN\\.vscode\\extensions\\vadimcn.vscode-lldb-1.12.2\\adapter\\codelldb.exe",
      "C:\\Users\\ADMIN\\.vscode\\extensions\\vadimcn.vscode-lldb-1.12.2\\lldb\\bin\\liblldb.dll"
    ),
  },
})
