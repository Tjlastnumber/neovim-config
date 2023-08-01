vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextSpaceChar guifg=#4d9375 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextStart guisp=#E06C75 gui=underline]]
vim.cmd [[highlight IndentBlanklineContextStart2 guisp=#E5C07B gui=underline]]
vim.cmd [[highlight IndentBlanklineContextStart3 guisp=#98C379 gui=underline]]
vim.cmd [[highlight IndentBlanklineContextStart4 guisp=#56B6C2 gui=underline]]
vim.cmd [[highlight IndentBlanklineContextStart5 guisp=#61AFEF gui=underline]]
vim.cmd [[highlight IndentBlanklineContextStart6 guisp=#C678DD gui=underline]]
vim.cmd [[highlight CursorLine guibg=#2f2f2f]]

vim.opt.list = true
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  enabled = true,
  use_treesitter = true,
  space_char_blankline = " ",
  context_char = "▏",
  line_space_char = "▏",
  char = "▏",
  show_foldtext = false,
  show_end_of_line = true,
  show_current_context = true,
  show_current_context_start = true,
  show_trailing_blankline_indent = false,
  context_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
    "IndentBlanklineContextSpaceChar",
  },
  context_start_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
    "IndentBlanklineContextSpaceChar",
  },
  -- context_start_list = {
  --   "IndentBlanklineContextStart",
  --   "IndentBlanklineContextStart1",
  --   "IndentBlanklineContextStart2",
  --   "IndentBlanklineContextStart3",
  --   "IndentBlanklineContextStart4",
  --   "IndentBlanklineContextStart5",
  --   "IndentBlanklineContextStart6",
  -- }
}
