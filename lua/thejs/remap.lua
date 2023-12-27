vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-u>", "<C-u>zz")               -- page up centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")               -- page down centered
vim.keymap.set("n", "n", "nzzzv")                     -- next search centered
vim.keymap.set("n", "N", "Nzzzv")                     -- previous search centered

vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")     -- copy to system clipboard
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")     -- delete without copying to clipboard

vim.keymap.set("n", "<D-Down>", ":m .+1<CR>==")       -- move line up(n)
vim.keymap.set("n", "<D-Up>", ":m .-2<CR>==")         -- move line down(n)
vim.keymap.set("v", "<D-Down>", ":m '>+1<CR>gv=gv")   -- move line up(v)
vim.keymap.set("v", "<D-Up>", ":m '<-2<CR>gv=gv")     -- move line down(v)
vim.keymap.set("i", "<D-Down>", "<ESC>:m .+1<CR>==i") -- move line down(v)
vim.keymap.set("i", "<D-Up>", "<ESC>:m .-2<CR>==i")   -- move line down(v)
vim.keymap.set("n", "Q", "<nop>")                     -- Disable repeat last macro
vim.keymap.set("n", "<C-s>", function()               -- format and save file
    vim.lsp.buf.format()
    vim.cmd.write()
end, { remap = false })
