-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

-- Move text up and down 
-- Normal-mode commands
keymap.set('n', '<S-j>', ':MoveLine(1)<CR>')
keymap.set('n', '<S-k>', ':MoveLine(-1)<CR>')
keymap.set('n', '<S-h>', ':MoveHChar(-1)<CR>')
keymap.set('n', '<S-l>', ':MoveHChar(1)<CR>')

--Insert Blank line
keymap.set('n','<leader>o','o<Esc>')
keymap.set('n','<leader>O','O<Esc>')

-- Visual-mode commands
keymap.set('v', '<S-j>', ':MoveBlock(1)<CR>')
keymap.set('v', '<S-k>', ':MoveBlock(-1)<CR>')
keymap.set('v', '<S-h>', ':MoveHBlock(-1)<CR>')
keymap.set('v', '<S-l>', ':MoveHBlock(1)<CR>')

--Better Indent
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Terminal exit
keymap.set("n","<leader>vt",":vsp newtab<CR>:terminal<CR>")
keymap.set("n","<leader>ht",":sp newtab<CR>:terminal<CR>")
keymap.set("t", "<Esc>", "<C-\\><C-n>", {silent = true})

-- to Normal mode (faster)
keymap.set("i", "jk", "<ESC>")
keymap.set("t", "jk", "<C-\\><C-n>", {silent = true})

-- to clear search highlights
keymap.set("n","<leader>nh",":nohl<CR>")

-- to increment and decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- x is set such that it doesn't copy deleted char to Register Buffer
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>=", "<C-w>+") -- increase split size
keymap.set("n", "<leader>-", "<C-w>-") -- decrease split size
keymap.set("n", "<leader>sn", "<C-w>w") -- next 
keymap.set("n", "<leader>sp", "<C-w>W") -- previous 
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

--telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

