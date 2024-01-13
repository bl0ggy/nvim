vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Page up centered
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Page down centered
vim.keymap.set("n", "n", "nzzzv")       -- Next search centered
vim.keymap.set("n", "N", "Nzzzv")       -- Previous search centered

vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")     -- Copy to system clipboard
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")     -- Delete without copying to clipboard

vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")           -- Quit terminal focus with Esc key
vim.keymap.set("n", "t", ":tabe %:p:h<CR>")           -- Open new tab with current directory
vim.keymap.set("n", "<D-Down>", ":m .+1<CR>==")       -- Move line up(n)
vim.keymap.set("n", "<D-Up>", ":m .-2<CR>==")         -- Move line down(n)
vim.keymap.set("v", "<D-Down>", ":m '>+1<CR>gv=gv")   -- Move line up(v)
vim.keymap.set("v", "<D-Up>", ":m '<-2<CR>gv=gv")     -- Move line down(v)
vim.keymap.set("i", "<D-Down>", "<ESC>:m .+1<CR>==i") -- Move line down(i)
vim.keymap.set("i", "<D-Up>", "<ESC>:m .-2<CR>==i")   -- Move line down(i)
vim.keymap.set("n", "Q", "<nop>")                     -- Disable repeat last macro
vim.keymap.set("n", "<leader>tr", ":tabprev<CR>")
vim.keymap.set("n", "<leader>tt", ":tabnext<CR>")
vim.keymap.set("n", "<C-s>", function() -- format and save file
    vim.lsp.buf.format()
    vim.cmd.write()
end, { remap = false })
