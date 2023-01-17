opt = vim.opt

-- General
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.swapfile = false
opt.clipboard = 'unnamedplus'

opt.list = true
opt.listchars = { eol = '↴', space = '⋅', tab = '>~' }

-- Indent
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines
