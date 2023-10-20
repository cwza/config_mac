vim.g.mapleader = " "

local keymap = vim.keymap

--
keymap.set("n", "<leader>rr", "<cmd>source $MYVIMRC<CR>", { desc = "Reload nvim config" })

-- buffer management
keymap.set("n", "<leader>bd", "<cmd>%bd|e#|bd#<CR>", { desc = "Close all buffer but current" })
keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<leader>bo", "<cmd>enew<CR>", { desc = "Create a new buffer" })

-- window management
keymap.set("n", "<leader>w|", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>w-", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wH", "<C-w>H", { desc = "Move window to left most" })
keymap.set("n", "<leader>wJ", "<C-w>J", { desc = "Move window to bottom most" })
keymap.set("n", "<leader>wK", "<C-w>K", { desc = "Move window to top most" })
keymap.set("n", "<leader>wL", "<C-w>L", { desc = "Move window to right most" })
keymap.set("n", "<leader>wr", "<C-w>r", { desc = "Rotate windows" })
keymap.set("n", "<leader>wh", "5<C-w><", { desc = "Resize winsow left" })
keymap.set("n", "<leader>wj", "5<C-w>-", { desc = "Resize winsow down" })
keymap.set("n", "<leader>wk", "5<C-w>+", { desc = "Resize winsow up" })
keymap.set("n", "<leader>wl", "5<C-w>>", { desc = "Resize winsow right" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- use U to redo
keymap.set("n", "U", "<C-r>")

-- move block by J, K
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- remain cursor while J
keymap.set("n", "J", "mzJ`z")

-- centor after page up down or search up down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- avoid yank when paste or delete
keymap.set("n", "x", [["_x]])
keymap.set("x", "p", [["_dP]])
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- yank and paste to system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- simple replace template
keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- toggle relative line number
keymap.set("n", "<leader>ul", "<Cmd>set number <bar> setlocal relativenumber!<CR>", { desc = "toggle relative number" })
