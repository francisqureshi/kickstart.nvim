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
    foldtext = function()
      return '' -- blank line; the '…' marker lives in the gutter instead
    end,
  },
  config = function(_, opts)
    vim.opt.foldminlines = 0 -- allow folding single-line comments
    vim.opt.fillchars:append { fold = ' ', foldclose = '…' } -- no dots; '…' shows in gutter
    vim.api.nvim_set_hl(0, 'Folded', { link = 'Comment' }) -- no line highlight, just dim it
    require('commentless').setup(opts)
  end,
}
