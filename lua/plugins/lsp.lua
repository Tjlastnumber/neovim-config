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
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- format on save
local on_attach = function(_, bufnr)
  vim.api.nvim_create_autocmd('BufWritePre', {
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end

local lsp_config = {
  capabilities = capabilities,
  group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}

require("mason-lspconfig").setup_handlers({
  function(server_name)
    require('lspconfig')[server_name].setup(lsp_config)
  end,
  lua_ls = function()
    require("lspconfig").lua_ls.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        Lua = {
          dianostics = {
            globals = { 'vim' }
          }
        }
      }
    }))
  end
})
