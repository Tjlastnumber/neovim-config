vim.g.mapleader = " "

local keymap = vim.keymap
local opt = { noremap = true, silent = true }

-- save
keymap.set("n", "<leader>w", "<Cmd>w<CR>")

-- delete a word backword
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<leader>ss", ":vsplit<Return><C-w>w", opt)

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<C-g>", ":NvimTreeFindFile<CR>:NvimTreeFocus<CR>")

keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-j>", "<C-w>-")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<leader>=", "<C-A>")

-- 单行、多行移动
-- keymap.set("v", "<C-j>", ":m +1<CR>gv=gv")
-- keymap.set("v", "<C-k>", ":m -2<CR>gv=gv")

-- tab
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")

-- toggleterm key map
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
