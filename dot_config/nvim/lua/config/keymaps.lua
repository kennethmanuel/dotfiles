-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "paste without dirtying current register" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank to plus register" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "yank plus register" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete to plus register" })
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "delete to plus register" })

vim.keymap.set("i", "<C-c>", "<Esc>")

if vim.g.vscode then
    vim.keymap.set("n", "<leader>`", "<Cmd>lua require('vscode').call('vscode-harpoon.addEditor')<CR>")
    vim.keymap.set("n", "<leader>1", "<Cmd>lua require('vscode').call('vscode-harpoon.gotoEditor1')<CR>")
    vim.keymap.set("n", "<leader>2", "<Cmd>lua require('vscode').call('vscode-harpoon.gotoEditor2')<CR>")
    vim.keymap.set("n", "<leader>3", "<Cmd>lua require('vscode').call('vscode-harpoon.gotoEditor3')<CR>")
    vim.keymap.set("n", "<leader>4", "<Cmd>lua require('vscode').call('vscode-harpoon.gotoEditor4')<CR>")
    vim.keymap.set("n", "<leader>5", "<Cmd>lua require('vscode').call('vscode-harpoon.gotoEditor5')<CR>")
    vim.keymap.set("n", "<leader>h", "<Cmd>lua require('vscode').call('vscode-harpoon.editEditors')<CR>")
else
end
