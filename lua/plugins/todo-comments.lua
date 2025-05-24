-- TODO: Highlight todo, notes, etc in comments
-- j.
return {
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      -- highlight = { after = 'fg', keyword = 'bg', pattern = [[.*<(KEYWORDS)\s*]] },
      -- search = { pattern = [[.*<(KEYWORDS)\s*]] },
      colors = {
        error = { '#DC2626' },
        warning = { '#FBBF24' },
        info = { '#2563EB' },
        hint = { '#10B981' },
        default = { '#7C3AED' },
        test = { '#FF00FF' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
