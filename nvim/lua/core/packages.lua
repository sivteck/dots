local paq_path = '$HOME/.config/nvim/pack/paqs/opt/paq-nvim'

if vim.fn.empty(vim.fn.glob(paq_path)) > 0 then
  vim.cmd('!git clone https://github.com/savq/paq-nvim ' .. paq_path)
end

vim.cmd('packadd paq-nvim')
local paq = require('paq-nvim').paq
paq {'savq/paq-nvim', opt = true}


-- Theme
paq { 'folke/tokyonight.nvim' }

-- StatusLine
-- paq { 'glepnir/galaxyline.nvim' }

-- Editor
paq { 'tpope/vim-commentary' } -- use 'gcc', 'gcap'
paq { 'L3MON4D3/LuaSnip' }

-- LSP
paq { 'neovim/nvim-lspconfig' }

-- Treesitter
paq { 'nvim-treesitter/nvim-treesitter' }
paq { 'JoosepAlviste/nvim-ts-context-commentstring' }

-- Autocomplete
paq { 'hrsh7th/nvim-cmp' }
paq { 'hrsh7th/cmp-nvim-lsp' }
paq { 'hrsh7th/cmp-buffer' }
paq { 'hrsh7th/cmp-path' }
paq { 'hrsh7th/cmp-cmdline' }
paq { 'hrsh7th/nvim-cmp' }

-- Telescope
paq { 'nvim-lua/popup.nvim' }
paq { 'nvim-lua/plenary.nvim' } -- Lua Utils
paq { 'nvim-telescope/telescope.nvim' }

-- Git
paq { 'lewis6991/gitsigns.nvim' }

-- Emmet
paq { 'mattn/emmet-vim' }

-- Ruby
paq { 'tpope/vim-rails' }
paq { 'tpope/vim-bundler' }
paq { 'tpope/vim-dispatch' }

-- IDE?
paq { 'ldelossa/litee.nvim' }
