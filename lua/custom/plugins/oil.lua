vim.api.nvim_create_autocmd('FileType', {
  pattern = 'oil',
  callback = function()
    vim.opt_local.colorcolumn = ''
  end,
})

return {
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- hidden files
      local hidden_files = {
        '..',
        '.bundle',
        '.git',
        '.ruby-lsp',
        '.irb_history',
        '.irbrc',
        '.pryrc',
        '.traceroute.yml',
        '.travis.yml',
        '.rspec',
        '.rubocop_todo.yml',
        'dump.rdb',
      }
      require('oil').setup {
        default_file_explorer = true,
        skip_confirm_for_simple_edits = true,
        view_options = {
          show_hidden = true,
          natural_order = true,
          -- is_always_hidden = function(name, _)
          --   return name == '..' or name == '.git' or name == '.irb_history' or name == 'irbrc' or name == '.pryrc' or name == '.rubocop_todo.yml'
          -- end,
          is_always_hidden = function(name, _)
            for _, hidden_name in ipairs(hidden_files) do
              if name == hidden_name then
                return true
              end
            end
            return false
          end,
        },
      }
    end,
  },
}
