vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use 'tribela/vim-transparent'
  use 'BurntSushi/ripgrep'
--[[   use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      require("rose-pine").setup()
      vim.cmd('colorscheme rose-pine')
    end
  }) ]]
  use 'sainnhe/sonokai'
  use 'savq/melange-nvim'
  use 'jacoborus/tender.vim'
  use 'AlexvZyl/nordic.nvim'
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use 'rebelot/kanagawa.nvim'
  -- use 'olimorris/onedarkpro.nvim'
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'folke/tokyonight.nvim'
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },         -- Required
      { 'williamboman/mason.nvim' },       -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' },   -- Optional
      { 'hrsh7th/cmp-path' },     -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },         -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional

      -- Pictograms
      { 'onsails/lspkind.nvim' }
    }
  }
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require("lspsaga").setup({})
    end,
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      --Please make sure you install markdown and markdown_inline parser
      { "nvim-treesitter/nvim-treesitter" }
    }
  })
  use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast128' })
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use 'nvim-tree/nvim-tree.lua'
  -- use 'akinsho/bufferline.nvim'
  use('jose-elias-alvarez/null-ls.nvim')

  -- Bottom Line --
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { "catppuccin/nvim", as = "catppuccin" }
  use "marko-cerovac/material.nvim"
  use 'numToStr/Comment.nvim'
  -- use "lukas-reineke/indent-blankline.nvim"
  use "windwp/nvim-autopairs"
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })
  use 'tpope/vim-fugitive'
  use 'rhysd/vim-grammarous'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'norcalli/nvim-colorizer.lua'
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)

