return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      indent = { enabled = true },
    },
    -- Indent guide colors (SnacksIndent / SnacksIndentScope) are set in the
    -- kanso `overrides` in init.lua — kanso defaults them to fg == bg (invisible)
    -- in the zen theme, and setting them there beats the colorscheme race.
  },
}
