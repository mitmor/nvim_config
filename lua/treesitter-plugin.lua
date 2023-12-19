----------------
-- Treesitter --
----------------

local opt = vim.opt
local api = vim.api
local M = {}

require'nvim-treesitter.configs'.setup{
  ensure_installed = { "terraform", "lua", "vim", "python", "hcl" },
  sync_install = false,
  auto_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}

-- treesitter folding
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'

function M.nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    api.nvim_command('augroup ' .. group_name)
    api.nvim_command('autocmd!')
    for _, def in pairs(definition) do
      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
      api.nvim_command(command)
    end
    api.nvim_command('augroup END')
  end
end

local autoCommands = {
  open_folds = {
    {"BufReadPost,FileReadPost", "*", "normal zR"}
  }
}

M.nvim_create_augroups(autoCommands)

