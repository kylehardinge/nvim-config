vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")
-- Clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')
-- increment/decrement numbers
vim.keymap.set("n", "<leader>=", "<C-a>") -- increment
vim.keymap.set("n", "<leader>-", "<C-x>") -- decrement

vim.keymap.set("n", "<leader>e", ":Ex<CR>")
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>pv', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Go up half a page and center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Fugitive setup
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gl", "<cmd>Git log --oneline<cr>")
vim.keymap.set("n", "<leader>gf", "<cmd>Git fetch<cr>")

-- Tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<C-]>", "<cmd>silent !tmux neww tmux-home<CR>")

-- Undo Tree
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")
--
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
