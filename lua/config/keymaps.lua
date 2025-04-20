-- General keymaps
vim.keymap.set('n', '<leader>w', '<cmd>:w!<cr>')
vim.keymap.set('n', '<leader>q', '<cmd>:q<cr>')
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true })
vim.keymap.set('n', '<esc>', ':noh <CR>', { noremap = true, silent = true })

-- Window keymaps
vim.keymap.set('n', '<leader>sh', '<cmd>split<cr>')
vim.keymap.set('n', '<leader>sv', '<cmd>vsplit<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>wincmd h<cr>')
vim.keymap.set('n', '<leader>j', '<cmd>wincmd j<cr>')
vim.keymap.set('n', '<leader>k', '<cmd>wincmd k<cr>')
vim.keymap.set('n', '<leader>l', '<cmd>wincmd l<cr>')

-- Nvim Tree Keymaps
local tree_api = require('nvim-tree.api')
vim.keymap.set('n', '<C-f>', tree_api.tree.toggle)

-- Undo Tree Keymaps
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Telescope Keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Harpoon Keymaps
local harpoon = require("harpoon")
vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- LSP Keymaps
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", '<cmd>FzfLua lsp_code_actions<CR>')
vim.keymap.set("n", "<leader>gh", function () vim.lsp.buf.hover({ border = 'rounded' }) end)
