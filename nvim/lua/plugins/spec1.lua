return {
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
  -- dccsillag/magma-nvim jupyter in nvim
  --
  -- csv
  'cameron-wags/rainbow_csv.nvim',

  -- LLMs!
  {
    "David-Kunz/gen.nvim",
    opts = {
        model = "mistral-nemo",
        quit_map = "q", -- set keymap to close the response window
        retry_map = "<c-r>", -- set keymap to re-send the current prompt
        accept_map = "<c-cr>", -- set keymap to replace the previous selection with the last result
        host = "localhost", -- The host running the Ollama service.
        port = "11434", -- The port on which the Ollama service is listening.
        display_mode = "split", -- The display mode. Can be "float" or "split" or "horizontal-split".
        show_prompt = false, -- Shows the prompt submitted to Ollama.
        show_model = true, -- Displays which model you are using at the beginning of your chat session.
        no_auto_close = false, -- Never closes the window automatically.
        file = false, -- Write the payload to a temporary file to keep the command short.
        hidden = false, -- Hide the generation window (if true, will implicitly set `prompt.replace = true`), requires Neovim >= 0.10
        init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
        -- Function to initialize Ollama
        command = function(options)
            local body = {model = "mistral-nemo", stream = true}
            return "curl --silent --no-buffer -X POST http://" .. options.host .. ":" .. options.port .. "/api/chat -d $body"
        end,
        -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
        -- This can also be a command string.
        -- The executed command must return a JSON object with { response, context }
        -- (context property is optional).
        -- list_models = '<omitted lua function>', -- Retrieves a list of model names
        debug = false -- Prints errors and the command which is run.

      }
  }
}
