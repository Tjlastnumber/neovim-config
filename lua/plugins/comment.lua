require('Comment').setup({
  ignore = nil,
  ---LHS of toggle mappings in NORMAL mode
  toggler = {
    ---Line-comment toggle keymap
    line = '<C-/>',
    ---Block-comment toggle keymap
    block = '<C-?>',
  },
  ---LHS of operator-pending mappings in NORMAL and VISUAL mode
  opleader = {
    ---Line-comment keymap
    line = '<C-/>',
    ---Block-comment keymap
    block = '<C-?>',
  },
})
