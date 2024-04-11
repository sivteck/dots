vim.api.nvim_set_keymap('i', 'df', '<Esc>', { noremap = true })
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Leader>b', ':b#<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<Leader>s', ':SnipRun#<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>s', ':SnipRun#<CR>', { noremap = true })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

vim.api.nvim_exec(
[[
if has("nvim")
  au TermOpen * tnoremap <Esc> <c-\><c-n>
endif
]],
false)
