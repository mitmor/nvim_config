----------------
-- Load LUA --
----------------

require('plug')
require('treesitter-plugin')
require('neoai-plugin')
require('cmp-plugin')
require('lspconfigs')
require('barbar-plugin')
require('lualine-plugin')

--------------------
-- KEYS and STUFF --
--------------------

-- set locals
local opt = vim.opt
local g = vim.g
local api = vim.api
local cmd = vim.cmd

-- SOFT DRACULA!
cmd[[colorscheme dracula-soft]]

-- Toggle NERDTree with F2
api.nvim_set_keymap('n', '<F2>', ':NERDTreeFind<CR>', { noremap = true, silent = true })

-- tabs and spaces
opt.wrap = false
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.list = true
opt.backspace = {'indent','eol','start'}
opt.listchars = { tab = "│·", extends = "⟩", precedes = "⟨", trail = "·" }

-- search
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- POWERLINE!
opt.laststatus = 2

-- netrw
g.netrw_browse_split = 4
g.netrw_altv = 1
g.netrw_winsize = 80
g.netrw_liststyle = 3
g.netrw_banner = 0

-- NUMBAHS
opt.number = true

-- copies
opt.clipboard = opt.clipboard + {'unnamed','unnamedplus'}
opt.mouse = "a"
