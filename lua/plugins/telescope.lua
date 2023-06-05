require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "./node_modules/*",
      "build/*",
    }
  }
}
-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<D-k>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fa', function()
  builtin.find_files({
    no_ignore = true,
    prompt_title = 'All Files'
  })
end, {})
vim.keymap.set('n', '<C-S-f>', builtin.buffers, {})

vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- 环境里要安装ripgrep
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
