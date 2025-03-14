local use_cterm, palette

palette = {
  base00 = '#000000',
  base01 = '#404040',
  base02 = '#606060',
  base03 = '#808080',
  base04 = '#c0c0c0',
  base05 = '#d0d0d0',
  base06 = '#e0e0e0',
  base07 = '#ffffff',
  base08 = '#ff0000',
  base09 = '#ff9900',
  base0A = '#ff0099',
  base0B = '#33ff00',
  base0C = '#00ffff',
  base0D = '#0066ff',
  base0E = '#cc00ff',
  base0F = '#3300ff',
}

use_cterm = false

if palette then
  require('mini.base16').setup { palette = palette, use_cterm = use_cterm }
  vim.g.colors_name = 'test'
end
