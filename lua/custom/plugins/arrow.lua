return {
  'otavioschwanck/arrow.nvim',
  opts = {
    leader_key = ';', -- Recommended to be a single key
    buffer_leader_key = 'm', -- Per Buffer Mappings
    show_icons = true,
    always_show_path = true,
    separate_by_branch = true,
    per_buffer_config = {
      lines = 8,
    },
  },
}
