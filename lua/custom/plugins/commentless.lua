return {
  'soemre/commentless.nvim',
  cmd = 'Commentless',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  keys = {
    {
      '<leader>/',
      function()
        require('commentless').toggle()
      end,
      desc = 'Toggle Comments visibility',
    },
  },
  opts = {
    -- hide_following_blank_lines = true,
    -- foldtext = function(folded_count)
    --   return '(' .. folded_count .. ' comments)'
    -- end,
  },
  config = function(_, opts)
    vim.opt.fillchars:append { fold = ' ' } -- no trailing dots on folded comments
    vim.api.nvim_set_hl(0, 'Folded', { link = 'Comment' }) -- no line highlight, just dim it
    require('commentless').setup(opts)
  end,
}
