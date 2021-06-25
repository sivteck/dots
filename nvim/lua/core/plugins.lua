local paq_path = '$HOME/.config/nvim/pack/paqs/opt/paq-nvim'

if vim.fn.empty(vim.fn.glob(paq_path)) > 0 then
  vim.cmd('!git clone https://github.com/savq/paq-nvim ' .. paq_path)
end

vim.cmd('packadd paq-nvim')
local paq = require('paq-nvim').paq
paq {'savq/paq-nvim', opt = true}

-- Theme
paq { 'folke/tokyonight.nvim' }

-- Editor
paq { 'tpope/vim-commentary' } -- use 'gcc', 'gcap'

-- LSP
paq { 'neovim/nvim-lspconfig' }

-- Treesitter
paq { 'nvim-treesitter/nvim-treesitter' }
paq { 'JoosepAlviste/nvim-ts-context-commentstring' }

-- Autocomplete
paq { 'hrsh7th/nvim-compe' }
paq { 'hrsh7th/vim-vsnip' }
