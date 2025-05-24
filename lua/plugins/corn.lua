return {
  {
    'RaafatTurki/corn.nvim',
    opts = {
      border_style = 'rounded',
      blacklisted_modes = { 'i' },
      highlights = {
        error = 'DiagnosticError',
      },
      item_preprocess_func = function(item)
        return item
      end,
    },
  },
}
