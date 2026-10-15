return {
  'carderne/pi-nvim',
  keys = {
    { '<leader>pi', '<cmd>Pi<CR>', mode = { 'n', 'v' }, desc = 'Send to Pi' },
    { '<leader>ps', ':PiSendSelection<CR>', mode = 'v', desc = 'Send selection to Pi' },
  },
  opts = {
    set_default_keymaps = false,
  },
}
