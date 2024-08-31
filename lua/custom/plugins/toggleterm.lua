return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    -- opts = {--[[ things you want to change go here]]
    -- config = true,
    config = function()
      require('toggleterm').setup {
        -- open_mapping = [[<leader>\]],
        open_mapping = [[<leader>\]],
        direction = 'float',
      }
    end,
  },
}
