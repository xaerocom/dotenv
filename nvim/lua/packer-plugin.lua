return require("packer").startup(function()
    use('wbthomason/packer.nvim')
    use('sbdchd/neoformat')
    use('neovim/nvim-lspconfig')
    use 'onsails/lspkind-nvim'
    use {
        'hrsh7th/nvim-cmp', 
        requires = {
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-path',
          'hrsh7th/cmp-cmdline',
        }
    }
    use {
        'hrsh7th/cmp-vsnip', 
        requires = {
          'hrsh7th/vim-vsnip',
          'rafamadriz/friendly-snippets',
        }
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
          'kyazdani42/nvim-web-devicons',
          'arkav/lualine-lsp-progress',
        },
    }
    use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
    use("nvim-treesitter/nvim-treesitter", { run = ':TSUpdate' })
    use('lukas-reineke/indent-blankline.nvim')
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use('gruvbox-community/gruvbox')
end)
