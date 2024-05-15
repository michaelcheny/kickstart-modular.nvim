-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

vim.g.autoformat = true

vim.opt.title = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.list = true
vim.opt.wrap = false -- disable line wrap
vim.opt.showmode = false -- don't show mode in favor of statusline
vim.opt.laststatus = 3
vim.opt.termguicolors = true

-- tabs and indentation {{
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.smarttab = true
vim.opt.shiftwidth = 2 -- size of indent
vim.opt.tabstop = 2 -- number of spaces tabs count for
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true
-- }}

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = 'unnamedplus'
-- Save undo history
vim.opt.undofile = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'
-- Decrease update time
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Vim-test open to the right
vim.g['test#neovim#term_position'] = 'vert'
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- vim: ts=2 sts=2 sw=2 et
