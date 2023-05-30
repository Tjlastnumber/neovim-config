vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", "<Cmd>w<CR>")

keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<leader>ss", ":vsplit<Return><C-w>w", { silent = true })

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<C-g>", ":NvimTreeFindFile<CR>:NvimTreeFocus<CR>")

keymap.set("n", "<leader>s<left>", "<C-w><")
keymap.set("n", "<leader>s<down>", "<C-w>-")
keymap.set("n", "<leader>s<right>", "<C-w>>")
keymap.set("n", "<leader>s<up>", "<C-w>+")

-- 单行、多行移动
-- keymap.set("v", "<C-j>", ":m +1<CR>gv=gv")
-- keymap.set("v", "<C-k>", ":m -2<CR>gv=gv")

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
