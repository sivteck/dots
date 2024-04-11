require "paq" {
  "savq/paq-nvim",                  -- Let Paq manage itself

-- Theme
  "folke/tokyonight.nvim",
  "nvim-tree/nvim-web-devicons",

-- Editor
  "tpope/vim-commentary", -- use "gcc", "gcap"

-- LSP
  "neovim/nvim-lspconfig",

-- Treesitter
  "nvim-treesitter/nvim-treesitter",
  "JoosepAlviste/nvim-ts-context-commentstring",

-- Autocomplete
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",

-- Snippets
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",

-- Telescope
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim", -- Lua Utils
  "nvim-telescope/telescope.nvim",

-- Git
  "lewis6991/gitsigns.nvim",
  "ruifm/gitlinker.nvim",

-- Emmet
  "mattn/emmet-vim",

-- Ruby
  "tpope/vim-rails",
  "tpope/vim-bundler",
  "tpope/vim-dispatch",

-- Auto-resize splits
  "beauwilliams/focus.nvim",

-- DAP
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
  "leoluz/nvim-dap-go",
-- IDE?
--  "ldelossa/litee.nvim",
  "folke/trouble.nvim",
  { "michaelb/sniprun", run = 'sh ./install.sh'},
  -- dccsillag/magma-nvim jupyter in nvim
  --
  -- csv
  'cameron-wags/rainbow_csv.nvim'
}
