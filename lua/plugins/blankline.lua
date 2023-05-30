vim.opt.list = true
vim.opt.listchars:append "eol:↴"
vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineContextSpaceChar guifg=#C678DD gui=nocombine]]
-- vim.cmd([[highlight IndentBlanklineContextStart guisp=#CDD6F4 gui=underline]])

require("indent_blankline").setup {
  use_treesitter = true,
  space_char_blankline = " ",
  context_char = "▏",
  char = "▏",
  show_foldtext = false,
  show_end_of_line = true,
  show_current_context = true,
  show_current_context_start = true,
  show_trailing_blankline_indent = false,
  -- context_highlight_list = {"IndentBlanklineContextSpaceChar"}
}
