local Plug = vim.fn['plug#']

----------
-- Plug --
----------

vim.call('plug#begin', '~/.config/nvim/plugged')
Plug('scrooloose/nerdtree')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('MunifTanjim/nui.nvim')
Plug('Bryley/neoai.nvim')
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')
Plug('hrsh7th/cmp-copilot')
Plug('lewis6991/gitsigns.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('romgrk/barbar.nvim')
Plug('stevearc/dressing.nvim')
Plug('rcarriga/nvim-notify')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.5'})
Plug('burntsushi/ripgrep')
Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'make' })
Plug('Mofiqul/dracula.nvim')
Plug('nvim-lualine/lualine.nvim')
vim.call('plug#end')
