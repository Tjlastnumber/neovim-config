local opt = vim.opt
opt.number = true
opt.relativenumber = true

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.mouse = "a"
opt.clipboard:append("unnamedplus")

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = false
opt.hidden = true
opt.title = true
opt.showcmd = true
opt.inccommand = "split"
opt.cursorline = true

opt.ignorecase = true
opt.smartcase = true
opt.list = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

opt.signcolumn = "yes"

opt.splitright = true
opt.splitbelow = true

opt.termguicolors = true
opt.linespace = 2.0
vim.o.guifont = "CaskaydiaCove Nerd Font:h13"

-- neovide
vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 1
vim.g.neovide_padding_left = 1
vim.g.neovide_hide_mouse_when_typing = true

vim.cmd [[autocmd BufNewFile,BufRead *.wxml set filetype=wxml]]
vim.cmd [[autocmd BufNewFile,BufRead *.wxss set filetype=wxss]]
