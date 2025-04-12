return {
  {
    {
      'm4xshen/hardtime.nvim',
      dependencies = { 'MunifTanjim/nui.nvim' },
      opts = {
        max_count = 10,
        disable_mouse = false,
        disabled_keys = {
          ['<Up>'] = {},
          ['<Down>'] = {},
          ['<Left>'] = {},
          ['<Right>'] = {},
        },
        restricted_keys = {
          ['<Up>'] = { '', 'i' },
          ['<Down>'] = { '', 'i' },
          ['<Left>'] = { '', 'i' },
          ['<Right>'] = { '', 'i' },
        },
      },
    },
  },
}
