return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      indent = { enabled = true },
    },
    config = function(_, opts)
      require('snacks').setup(opts)
      -- Fix invisible indent guides with kanso colorscheme
      local function set_indent_hl()
        vim.api.nvim_set_hl(0, 'SnacksIndent', { fg = '#2a2f36' })
        vim.api.nvim_set_hl(0, 'SnacksIndentScope', { fg = '#9a8aab' }) -- muted purple
      end
      set_indent_hl()
      vim.api.nvim_create_autocmd('ColorScheme', {
        callback = set_indent_hl,
      })
    end,
  },
}
