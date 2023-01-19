local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -------------- Plugins ---------------
    --> Base
    -- Theme
    use 'sam4llis/nvim-tundra'
    use 'nvim-lualine/lualine.nvim'
    use 'goolord/alpha-nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { 'nvim-telescope/telescope-file-browser.nvim' } }
    -- LSP
    use 'neovim/nvim-lspconfig'
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'petertriho/cmp-git',
            'saadparwaiz1/cmp_luasnip',
        },
    }
    -- snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    -- icons
    use 'folke/trouble.nvim'

--> Utilities
    use 'gpanders/editorconfig.nvim'
    use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
    use { 'norcalli/nvim-colorizer.lua', config = function() require'colorizer'.setup() end }
    use 'tpope/vim-surround'
    use 'windwp/nvim-ts-autotag'
    -- Git
    use 'kdheepak/lazygit.nvim'
    use { 'APZelos/blamer.nvim', config = function() vim.cmd [[let g:blamer_enabled = 1]] end }
    use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
    --use 'windwp/nvim-ts-autotag'
--> Common plugins dependeces
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-lua/plenary.nvim'
--------------------------------------
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
