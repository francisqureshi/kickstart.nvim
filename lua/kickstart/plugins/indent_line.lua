return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      indent = { enabled = true },
      statuscolumn = {
        enabled = true, -- gutter fold marker (fillchars.foldclose)
        left = { 'mark', 'sign', 'git', 'fold' }, -- all left of line number
        right = {},
      },
    },
    -- Indent guide colors (SnacksIndent / SnacksIndentScope) are set in the
    -- kanso `overrides` in init.lua — kanso defaults them to fg == bg (invisible)
    -- in the zen theme, and setting them there beats the colorscheme race.
  },
}
