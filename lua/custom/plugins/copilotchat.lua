return {
  'CopilotC-Nvim/CopilotChat.nvim',
  dependencies = {
    { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
    { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
  },
  build = 'make tiktoken',
  opts = {
    -- model = 'claude-3.5-sonnet',
    model = 'gpt-4.1',
  },
}
