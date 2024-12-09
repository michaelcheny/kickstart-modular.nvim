return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'everforest',
        -- theme = 'kanagawa',
        -- theme = 'dracula',
      },
      sections = {
        lualine_c = {
          {
            'filename',
            path = 1, -- 1 means relative path, 0 would be just the filename
          },
        },
      },
    }
  end,
}
