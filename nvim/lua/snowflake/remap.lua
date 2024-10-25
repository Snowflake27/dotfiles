-- # Remap files
-- Use this files for all your remaps


-- This sets the leader key
-- You can refer to it by using `<leader>`
vim.g.mapleader = " "

--[[
--	This is how it works:
--	- `n`: While in **Normal** mode
--	- `<leader>pv`: When I type ` pv` (That whitespace is the leader we set above).
--	                Do not enter command mode (by pressing `:` or this won't work)
--	- `vim.cmd.ex`: Run the command `Ex` from Vim, which is the file (Ex)plorer
--]]
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- This is essentially useful to shift lines like you would do in Jetbrains IDEs
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- This one lets you append the next line to this one.
vim.keymap.set("n", "J", "mzJ`z")

-- Essentially page up and page down, but keep the cursor in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- If you try to search for something, keep the thing you're searching in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- When you search for something, press ESC to stop the highlighting
vim.keymap.set("n", "<esc>", ":noh<return><esc>")

-- When pasting over something, do not replace the paste buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank into the system clipboard, just in case
-- neovim refers to the system clipboard as the "plus register `+`"
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- You never know when this will be useful
vim.keymap.set("i", "<C-c>", "<esc>")

-- Format all file, basically what you used to do with CTRL+ALT+L
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Pretty much `sed` but in neovim
vim.keymap.set("n", "<leader>sed", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-- Check additional remaps in the configuration files for the following plugins:
-- harpoon
-- telescope
-- undotree
