-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

vim.g.autoformat = true

-- looks {{
vim.opt.title = true
vim.opt.titlestring = '%t'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
-- vim.opt.cmdheight = 0
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.list = true
vim.opt.wrap = false -- disable line wrap
vim.opt.laststatus = 3
vim.opt.termguicolors = true
vim.opt.splitright = true -- Configure how new splits should be opened
vim.opt.splitbelow = true -- Configure how new splits should be opened
-- }}

-- tabs and indentation {{
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.smarttab = true
vim.opt.shiftwidth = 2 -- size of indent
vim.opt.tabstop = 2 -- number of spaces tabs count for
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true
-- }}

vim.opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.
vim.opt.undofile = true -- Save undo history
vim.opt.ignorecase = true -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes' -- Keep signcolumn on by default
vim.opt.updatetime = 250 -- Decrease update time
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time -- Displays which-key popup sooner

-- Vim-test {{
vim.g['test#neovim#term_position'] = 'vert' -- Vim-test open to the right
-- }}

vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!

-- vim: ts=2 sts=2 sw=2 et
