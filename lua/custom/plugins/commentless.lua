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
}
