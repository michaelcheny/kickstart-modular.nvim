-- return {
--   {
--     'Mofiqul/dracula.nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       vim.cmd.colorscheme 'dracula'
--     end,
--   },
-- }
-- might go back to catppuccin? idk yet
-- return {
--   {
--     'catppuccin/nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require('catppuccin').setup {
--         integrations = {
--           aerial = true,
--           alpha = true,
--           cmp = true,
--           dashboard = true,
--           flash = true,
--           gitsigns = true,
--           headlines = true,
--           illuminate = true,
--           indent_blankline = { enabled = true },
--           leap = true,
--           lsp_trouble = true,
--           mason = true,
--           markdown = true,
--           mini = true,
--           native_lsp = {
--             enabled = true,
--             underlines = {
--               errors = { 'undercurl' },
--               hints = { 'undercurl' },
--               warnings = { 'undercurl' },
--               information = { 'undercurl' },
--             },
--           },
--           navic = { enabled = true, custom_bg = 'lualine' },
--           neotest = true,
--           neotree = true,
--           noice = true,
--           notify = true,
--           semantic_tokens = true,
--           telescope = true,
--           treesitter = true,
--           treesitter_context = true,
--           which_key = true,
--         },
--       }
--       vim.cmd.colorscheme 'catppuccin-macchiato'
--     end,
--   },
-- }

-- testing kanagawa out for a bit... lets see
-- return {
--   {
--     'rebelot/kanagawa.nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require('kanagawa').setup {
--         colors = {
--           theme = {
--             all = {
--               ui = {
--                 bg_gutter = 'none',
--               },
--             },
--           },
--         },
--       }
--       vim.cmd.colorscheme 'kanagawa'
--     end,
--   },
-- }

return {
  {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require('everforest').setup {
        -- background = 'soft',
        -- on_highlights = function(hl, palette)
        --   hl.DiagnosticError = { fg = palette.red, bg = palette.none, sp = palette.red }
        --   hl.DiagnosticWarn = { fg = palette.orange, bg = palette.none, sp = palette.orange }
        --   hl.DiagnosticInfo = { fg = palette.blue, bg = palette.none, sp = palette.blue }
        --   hl.DiagnosticHint = { fg = palette.green, bg = palette.none, sp = palette.green }
        -- end,
        -- colors = {
        --   theme = {
        --     all = {
        --       ui = {
        --         bg_gutter = 'none',
        --       },
        --     },
        --   },
        -- },
      }
      vim.cmd.colorscheme 'everforest'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
