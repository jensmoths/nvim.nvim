local colors, use_cterm, palette
local hi = vim.api.nvim_set_hl

colors = {
  bg = '#000000',
  green = '#00ff00',
  magenta = '#ff00ff',
  yellow = '#ffff00',
  cyan = '#00ffff',
  orange = '#ff8000',
  red = '#ff0000',
  blue = '#0000ff',
  purple = '#800080',
  pink = '#ffc0c0',
  white = '#ffffff',
  grey = '#7b8496',
}
palette = {
  base00 = colors.bg,
  base01 = colors.bg,
  base02 = '#332626',
  base03 = colors.grey,
  base04 = colors.green,
  base05 = colors.white,
  base06 = colors.bg,
  base07 = colors.bg,
  base08 = colors.white,
  base09 = colors.green,
  base0A = colors.green,
  base0B = '#ffa0a0',
  base0C = colors.orange,
  base0D = colors.cyan,
  base0E = colors.yellow,
  base0F = colors.orange,
}

use_cterm = false

if palette then
  require('mini.base16').setup { palette = palette, use_cterm = use_cterm }
  vim.g.colors_name = 'cont'
end

hi(0, 'Comment', { fg = '#80a0ff', italic = true })
hi(0, 'Operator', { fg = colors.magenta })
hi(0, 'Statement', { fg = colors.yellow })
hi(0, 'Exception', { fg = colors.yellow })
hi(0, 'Character', { fg = '#ffd3d3' })
hi(0, 'PreProc', { fg = colors.purple })
hi(0, 'Macro', { fg = colors.purple })
hi(0, 'Define', { fg = '#ff0099' })
hi(0, 'Type', { fg = '#ff0099' })
hi(0, 'Structure', { fg = '#ff4db8' })
hi(0, 'DiagnosticError', { fg = colors.red })
hi(0, 'DiagnosticInfo', { fg = colors.grey })
hi(0, 'DiagnosticVirtualTextInfo', { fg = colors.grey })

hi(0, 'MiniStatuslineDevinfo', { fg = '#00ff66', bg = colors.bg })
hi(0, 'MiniStatuslineModeNormal', { fg = colors.bg, bg = '#ff0099' })
hi(0, 'MiniTablineCurrent', { fg = '#ff0099', bg = colors.bg })

hi(0, 'TreesitterContext', { fg = colors.grey, underline = true, sp = colors.grey })
