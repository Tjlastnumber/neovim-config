local builtin = require('telescope.builtin')

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    }
  }
}
-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-S-p>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- 环境里要安装ripgrep
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
