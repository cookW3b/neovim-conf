vim.g.mapleader =  " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>pw', vim.cmd.vsplit)

-- vim.keymap.set('n', '<leader>git', ':Git<cr>')
-- vim.keymap.set('n', '<leader>gd', ':Gvdiffsplit<cr>')

vim.keymap.set('v', '<C-c>', '"+y')      -- Copy
vim.keymap.set('n', '<C-v>', '"+P')      -- Paste normal mode
vim.keymap.set('v', '<C-v>', '"+P')      -- Paste visual mode
vim.keymap.set('c', '<C-v>', '<C-R>+')   -- Paste command mode

vim.keymap.set('n', '<F2>', ':bprevious<cr>')
vim.keymap.set('n', '<F3>', ':bnext<cr>')
vim.keymap.set('n', '<F1>', ':bdelete<cr>')
vim.keymap.set('n', '<leader>lf', ':set fileformat=unix<cr>')
