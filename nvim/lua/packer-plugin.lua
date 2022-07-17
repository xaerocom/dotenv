return require("packer").startup(function()
    use('wbthomason/packer.nvim')
    use('sbdchd/neoformat')
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
