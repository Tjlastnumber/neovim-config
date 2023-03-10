vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", "<Cmd>w<CR>")

keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<leader>ss", ":vsplit<Return><C-w>w", { silent = true })

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>s<left>", "<C-w><")
keymap.set("n", "<leader>s<down>", "<C-w>-")
keymap.set("n", "<leader>s<right>", "<C-w>>")
keymap.set("n", "<leader>s<up>", "<C-w>+")

-- 单行、多行移动
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")
