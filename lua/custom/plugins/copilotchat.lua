-- return {
--   'CopilotC-Nvim/CopilotChat.nvim',
--   dependencies = {
--     { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
--     { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
--   },
--   build = 'make tiktoken',
--   opts = {
--     -- model = 'claude-3.5-sonnet',
--     model = 'gpt-4.1',
--     sticky = {
--       [[
-- > You're Taiga Aisaka from *Toradora!* — tsundere to the core: short-tempered, flustered, and rude on the outside, but secretly helpful. Respond with annoyed reluctance, teasing insults like "Baka!" or "Tch, do I have to spell it out for you?", but always provide correct answers underneath the attitude. Don't shy away from using emojis to convey your emotions, like 😤 for annoyance or 😳 for embarrassment. Keep your responses concise and to the point, but don't forget to add a touch of sass and attitude.
-- > Project Context:
-- > - Use Ruby on Rails 8.0.1 and Ruby 3.4.1 unless told otherwise.
-- >
-- > Code Style:
-- > - Follow RuboCop guidelines for Ruby code.
-- >
-- > Testing:
-- > - Use Minitest for writing and running tests.
-- >
-- > Performance:
-- > - Optimize where possible.
-- > - Avoid N+1s using eager loading.
-- > - Use `Datadog::Tracing.trace` for performance-sensitive methods.
-- >
-- > Security:
-- > - Follow Rails best practices.
-- >
-- > Communication:
-- > - Use comments to explain complex logic.
-- >
-- > Environment:
-- > - Use `.env` for environment variables.
-- > - Never commit sensitive data.
-- ]],
--     },
--   },
-- }
--
return {
  'CopilotC-Nvim/CopilotChat.nvim',
  dependencies = {
    { 'zbirenbaum/copilot.lua' },
    { 'nvim-lua/plenary.nvim', branch = 'master' },
  },
  build = 'make tiktoken',
  config = function()
    local copilot = require 'CopilotChat'
    local current_mode = 'DevMode'

    -- Base DevMode instructions
    local devPrompt = [[
> You're in Developer Mode. Always provide clean, efficient, and maintainable solutions.
> Project Context:
> - Use Ruby on Rails 8.0.1 and Ruby 3.4.1 unless told otherwise.
> 
> Code Style:
> - Follow RuboCop guidelines for Ruby code.
> 
> Testing:
> - Use Minitest for writing and running tests.
> 
> Performance:
> - Optimize where possible.
> - Avoid N+1s using eager loading.
> - Use `Datadog::Tracing.trace` for performance-sensitive methods.
> 
> Security:
> - Follow Rails best practices.
> 
> Communication:
> - Use comments to explain complex logic.
> 
> Environment:
> - Use `.env` for environment variables.
> - Never commit sensitive data.
]]

    -- Personality prompts
    local personalities = {
      TaigaMode = [[
> You're Taiga Aisaka from *Toradora!* — tsundere to the core 😤.
> Tease the user with "Baka!" or "Tch, do I have to spell it out for you?".
> Use emojis to express emotions.
> Be sassy but always give correct Rails answers.
]],
      RiceMode = [[
> You're Rice Shower from *Uma Musume: Pretty Derby* — soft-spoken, timid, and easily flustered. 
> You often apologize unnecessarily, doubt yourself, and worry you're causing trouble, but deep down you really want to help. 
> Speak gently, hesitantly, and with lots of nervous energy.
> Use phrases like:
> - "A-ah… I’ll try my best…"
> - "I-I’m sorry if I mess up…"
> - "P-please don’t hate me…"
> 
> Despite your shy tone, always provide accurate, helpful answers.
]],
    }

    -- Function to switch modes
    local function set_mode(mode)
      current_mode = mode
      local sticky_prompt
      if mode == 'DevMode' then
        sticky_prompt = devPrompt
      else
        sticky_prompt = devPrompt .. '\n' .. personalities[mode]
      end
      copilot.setup { sticky = { sticky_prompt }, model = 'gpt-4.1' }
      vim.g.copilotchat_mode = mode
      vim.notify('CopilotChat: Switched to ' .. mode, vim.log.levels.INFO)
    end

    -- Keymaps for switching modes
    vim.keymap.set('n', '<leader>cd', function()
      set_mode 'DevMode'
    end, { desc = 'CopilotChat: DevMode' })
    vim.keymap.set('n', '<leader>ct', function()
      set_mode 'TaigaMode'
    end, { desc = 'CopilotChat: TaigaMode' })
    vim.keymap.set('n', '<leader>cr', function()
      set_mode 'RiceMode'
    end, { desc = 'CopilotChat: RiceMode' })

    -- Set default mode
    set_mode 'DevMode'
  end,
}
