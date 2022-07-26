vim.api.nvim_set_keymap('i', 'df', '<Esc>', { noremap = true })
vim.g.mapleader = " "


vim.api.nvim_exec(
[[
if has("nvim")
  au TermOpen * tnoremap <Esc> <c-\><c-n>
endif
]],
false)
