return {
  'Bekaboo/dropbar.nvim',
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
  config = function()
    local dropbar_configs = require 'dropbar.configs'
    local default_enable = dropbar_configs.opts.bar.enable
    require('dropbar').setup {
      bar = {
        enable = function(buf, win, info)
          if vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].filetype == 'neo-tree' then
            return false
          end
          return default_enable(buf, win, info)
        end,
      },
    }

    local dropbar_api = require 'dropbar.api'
    vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
    vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
    vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
  end,
}
