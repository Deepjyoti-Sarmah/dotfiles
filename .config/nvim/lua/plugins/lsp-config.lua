return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  config = function()

    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    require("mason-lspconfig").setup({
      ensure_installed = {"bashls", "clangd", "cmake", "cssls", "tailwindcss", "dockerls", "gopls", "templ", "html", "htmx", "eslint", "tsserver", "jsonls", "jqls", "ast_grep", "lua_ls", "harper_ls", "prismals", "rust_analyzer", "solidity", "yamlls"},

      automatic_installation = true,
    })

    require'lspconfig'.bashls.setup{}
    require'lspconfig'.clangd.setup{}
    require'lspconfig'.cmake.setup{}

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require'lspconfig'.cssls.setup {
      capabilities = capabilities,
    }

    require("lspconfig").dockerls.setup {
      settings = {
        docker = {
          languageserver = {
            formatter = {
              ignoreMultilineInstructions = true,
            },
          },
        }
      }

      require'lspconfig'.gopls.setup{}

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require'lspconfig'.html.setup {
      capabilities = capabilities,
    }

    require'lspconfig'.htmx.setup{}
    require'lspconfig'.lua_ls.setup{}
    require'lspconfig'.harper_ls.setup{}
    require'lspconfig'.eslint.setup{}
    require'lspconfig'.jqls.setup{}

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require'lspconfig'.jsonls.setup {
      capabilities = capabilities,
    }

    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})


  end
}
