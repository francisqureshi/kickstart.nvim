return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  cmd = {
    'DiffviewOpen',
    'DiffviewClose',
    'DiffviewToggleFiles',
    'DiffviewFocusFiles',
    'DiffviewRefresh',
    'DiffviewFileHistory',
  },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<CR>', desc = 'Open git diff view' },
    { '<leader>gh', '<cmd>DiffviewFileHistory %<CR>', desc = 'Open git file history' },
    { '<leader>gc', '<cmd>DiffviewClose<CR>', desc = 'Close git diff view' },
  },
  opts = {},
}
