local function map(mode, lhs, rhs, opts)
    local options = { noremap=true, silent=true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Defina leader key
vim.g.mapleader = ' '

-----------------------------
--    Neovim shortcuts     --
-----------------------------
-- Escape
map('i', 'kk', '<Esc>')

-- Clear highlighting
map('n', '<Esc>', ':noh<CR>')

-- New/Open file
map('n', '<leader>o', ':e ')

-- Reload configuration
map('n', '<leader>r', ':so %<CR>')

-- Movement in insert mode
map('i', '<C-h>', '<left>')
map('i', '<C-j>', '<down>')
map('i', '<C-k>', '<up>')
map('i', '<C-l>', '<right>')

-- Save/exit
map('n', '<leader>x', ':x<CR>')
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>s', ':wa<CR>')
map('n', '<leader>e', ':qa!<CR>')

-- Move Lines
map('n', '<A-j>', ':m .+1<CR>==')
map('v', '<A-j>', ":m '>+1<CR>gv=gv")
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
map('n', '<A-k>', ':m .-2<CR>==')
map('v', '<A-k>', ":m '<-2<CR>gv=gv")
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi')

-- VSCode
map('n', '<C-A>', 'ggVG')
map('v', '<Tab>', '>')
map('v', '<S-Tab>', '<')
map('i', '<S-Tab>', '<C-d>')

-- Split window
map('n', 'ss', ':split<Return><C-w>w')
map('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
map('n', '<Space>', '<C-w>w')
map('', 'sh', '<C-w>h')
map('', 'sk', '<C-w>k')
map('', 'sj', '<C-w>j')
map('', 'sl', '<C-w>l')
-- Resize window
map('n', '<C-Up>', ':resize +2<CR>')
map('n', '<C-Down>', ':resize -2<CR>')
map('n', '<C-Left>', ':vertical resize -2<CR>')
map('n', '<C-Right>', ':vertical resize +2<CR>')
-----------------------------
--   Plugins shortcuts     --
-----------------------------
map('n', '<F12>', ':PackerSync<CR>')

-- Telescope
map('n', '<leader>f', ':Telescope find_files<CR>')
map('n', '<leader>b', ':Telescope file_browser<CR>')
map('n', '<leader>m', ':Telescope buffers<CR>')

-- Lazygit
map('n', '<leader>g', ':LazyGit<CR>')
