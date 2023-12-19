--------------------
------ BARBAR ------
--------------------

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Move to previous/next
map('n', '<space>H', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<space>L', '<Cmd>BufferNext<CR>', opts)
-- Goto buffer in position...
map('n', '<space>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<space>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<space>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<space>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<space>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<space>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<space>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<space>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<space>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<space>0', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<space>ww', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
