local vim = vim
require("main.remap")
require("main.packer")
require('main.functions')

-- show floating errors
vim.api.nvim_set_keymap('n', '<space>q', ':lua vim.diagnostic.open_float(0, {scope="line"})<CR>', { noremap = true })

-- system clipboard
vim.api.nvim_set_keymap('n', '<c-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<c-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('i', '<c-v>', '<c-r>+', { noremap = true })
vim.api.nvim_set_keymap('c', '<c-v>', '<c-r>+', { noremap = true })
vim.api.nvim_set_keymap('i', '<c-r>', '<c-v>', { noremap = true })


vim.api.nvim_set_keymap('n', '<A-a>', 'h', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-s>', 'j', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-w>', 'k', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-d>', 'l', { noremap = true })


