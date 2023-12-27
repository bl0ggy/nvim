local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    { 'folke/lazy.nvim' },
    { 'folke/neodev.nvim' },
    { 'rose-pine/neovim',     name = 'rose-pine' },
    { 'rebelot/kanagawa.nvim' },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { 'BurntSushi/ripgrep' },
    { 'sharkdp/fd' },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'nvim-treesitter/nvim-treesitter',  build = ':TSUpdate' },
    { 'theprimeagen/harpoon' },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },

    -- VonHeikemen/lsp-zero.nvim
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
})

--require('rose-pine').setup({
--	variant = 'dawn',
--})
--vim.cmd('colorscheme rose-pine')
