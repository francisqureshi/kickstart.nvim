return {
  'lewis6991/hover.nvim',
  config = function()
    require('hover').config {
      providers = {
        'hover.providers.lsp',
        'hover.providers.diagnostic',
        'hover.providers.man',
      },
      preview_opts = {
        border = 'rounded',
      },
      preview_window = false,
      title = true,
      mouse_providers = {
        'hover.providers.lsp',
      },
      mouse_delay = 1000,
    }

    -- Setup keymaps with double K behavior
    local hover_open = false
    vim.keymap.set('n', 'K', function()
      if hover_open then
        require('hover').enter()
      else
        require('hover').open()
        hover_open = true
        -- Reset flag after a delay
        vim.defer_fn(function()
          hover_open = false
        end, 500)
      end
    end, { desc = 'hover.nvim (open/enter)' })

    vim.keymap.set('n', 'gK', function()
      require('hover').enter()
    end, { desc = 'hover.nvim (enter)' })

    vim.keymap.set('n', '<C-p>', function()
      require('hover').switch 'previous'
    end, { desc = 'hover.nvim (previous source)' })

    vim.keymap.set('n', '<C-n>', function()
      require('hover').switch 'next'
    end, { desc = 'hover.nvim (next source)' })

    -- Mouse support
    vim.keymap.set('n', '<MouseMove>', function()
      require('hover').mouse()
    end, { desc = 'hover.nvim (mouse)' })

    vim.o.mousemoveevent = true
  end,
}
