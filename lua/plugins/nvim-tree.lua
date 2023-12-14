vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    side = 'left'
  },
  renderer = {
    icons = {
      git_placement = 'after',
      glyphs = {
        git = {
          unstaged = "◉",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "●",
          deleted = "",
          ignored = "◌",
        },
      }
    },
  }
})
