vim.opt.termguicolors = true

require("bufferline").setup {
  options = {
    -- 使用 nvim 内置lsp
    diagnostics = "coc",
    -- 左侧让出 nvim-tree 的位置
    offsets = { {
      filetype = "NvimTree",
      text = "Directory",
      highlight = "Directory",
      text_align = "left"
    } },
    hover = {
      enabled = true,
      delay = 200,
      reveal = { 'close' }
    }
  }
}

vim.keymap.set('n', '<leader>x', ":bdelete<CR>")
