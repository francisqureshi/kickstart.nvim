return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'Toggle File Explorer', silent = true },
  },
  opts = {
    event_handlers = {
      {
        event = 'neo_tree_window_after_open',
        handler = function(args)
          if not vim.api.nvim_win_is_valid(args.winid) then
            return
          end

          -- Hide Neo-tree's header and footer; its internal buffer name is
          -- not useful UI here. The blank statusline remains window-local.
          vim.wo[args.winid].winbar = ''
          vim.wo[args.winid].statusline = ' '
        end,
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
