-----------------
-- LSP configs --
-----------------

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require'lspconfig'.lua_ls.setup {
  capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          },
          runtime = {
            version = 'LuaJIT'
          },
          -- Make the server aware of Neovim runtime files
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
            }
          },
        }
      }
}
require'lspconfig'.bashls.setup{
  capabilities = capabilities
}
require'lspconfig'.dockerls.setup{
  capabilities = capabilities
}
require'lspconfig'.jsonls.setup{
  capabilities = capabilities
}
require'lspconfig'.terraformls.setup{
  capabilities = capabilities
}
require'lspconfig'.tflint.setup{
  capabilities = capabilities
}
require'lualine'.setup{
  options = {
    theme = 'dracula'
  }
}
