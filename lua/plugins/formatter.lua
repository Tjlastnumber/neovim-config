local status, formatter = pcall(require, "formatter")
if not status then
  vim.notify("not fond formatter plugin")
  return
end

formatter.setup({
  filetype = {
    -- lua = {
    --   function()
    --     return {
    --       exe = "stylua",
    --       args = {
    --         "-f $HOME/.config/nvim/.stylua.toml",
    --         "-",
    --       },
    --       stdin = true,
    --     }
    --   end,
    -- },
    -- javascript = {
    --   -- prettier
    --   function()
    --     return {
    --       exe = "prettier",
    --       args = {
    --         "--stdin-filepath",
    --         vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
    --         "--single-quote",
    --         "--no-semi",
    --         "--trailing-comma none",
    --         "--arrow-parens avoid",
    --         "--end-of-line lf",
    --         "--bracket-same-line",
    --         "--single-attribute-per-line"
    --       },
    --       stdin = true,
    --     }
    --   end,
    -- },
    json = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote" },
          stdin = true,
        }
      end,
    },
    python = {
      -- Configuration for psf/black
      function()
        return {
          exe = "python3 -m autopep8", -- this should be available on your $PATH
          args = {
            "--in-place --aggressive --aggressive",
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
          },
          stdin = false,
        }
      end,
    },
    go = {
      function()
        return {
          exe = "goimports",
          args = {
            "-w",
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
          },
          stdin = false,
        }
      end,
    },
  },
})

vim.api.nvim_exec(
  [[
        augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *.go,*.lua,*.py,*.vue,*.json,*.js FormatWrite
        augroup END
 ]],
  true
)
