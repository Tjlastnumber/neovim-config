require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
    "query",
    "javascript",
    "typescript",
    "lua",
    "vim",
    "bash",
    "json",
    "python",
    "css",
    "scss",
    "dockerfile",
    "markdown",
    "gitignore",
    "html",
    "vue",
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "lua", "sql", "python" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = { enable = true, additional_vim_regex_highlighting = true },
  indent = { enable = true },
  -- 启用增量选择
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },

  -- rainbow = {
  --   enable = true,
  --   extended_mode = true,
  --   max_file_lines = nil
  -- }
}
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99
