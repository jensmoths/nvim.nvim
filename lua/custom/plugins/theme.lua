return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('cyberdream').setup {

      -- Enable transparent background
      transparent = false,

      -- Enable italics comments
      italic_comments = false,

      -- Replace all fillchars with ' ' for the ultimate clean look
      hide_fillchars = true,

      -- Modern borderless telescope theme - also applies to fzf-lua
      borderless_telescope = false,

      -- Set terminal colors used in `:terminal`
      terminal_colors = true,

      -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
      cache = false,

      theme = {
        variant = 'default', -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
        saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
        -- Override a color entirely
        colors = {
          -- For a list of colors see `lua/cyberdream/colours.lua`
          -- Example:
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
        },
        -- highlights = {
        --   -- Highlight groups to override, adding new groups is also possible
        --   -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values
        --
        --   -- Example:
        --   Comment = { fg = '#80a0ff', bg = 'NONE', italic = true },
        --   Character = { fg = '#ffa0a0', bg = 'NONE' },
        --   String = { fg = '#ffa0a0', bg = 'NONE' },
        --   Statement = { fg = '#ffff00', bg = 'NONE' },
        --
        --   -- Complete list can be found in `lua/cyberdream/theme.lua`
        -- },

        -- Override a highlight group entirely using the color palette
        overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
          -- Example:
          return {
            Comment = { fg = '#80a0ff', bg = 'NONE', italic = true },
            Character = { fg = '#ffa0a0', bg = 'NONE' },
            String = { fg = '#ffa0a0', bg = 'NONE' },
            Number = { fg = '#ffa0a0', bg = 'NONE' },
            Statement = { fg = colors.yellow, bg = 'NONE' },
            Keyword = { fg = colors.yellow, bg = 'NONE' },
            Type = { fg = colors.green, bg = 'NONE' },
            Function = { fg = colors.cyan, bg = 'NONE' },
            -- Special = { fg = colors.orange, bg = 'NONE' },
            Delimiter = { fg = colors.orange, bg = 'NONE' },
            -- Identifier = { fg = colors.blue, bg = 'NONE' },
            Operator = { fg = colors.magenta, bg = 'NONE' },
            Error = { fg = colors.red, bg = 'NONE' },
            DiagnosticError = { fg = colors.red, bg = 'NONE' },
            DiagnosticInfo = { fg = colors.grey, bg = 'NONE' },
            DiagnosticVirtualTextInfo = { fg = colors.grey, bg = 'NONE' },
            -- PreProc = { fg = colors.purple, bg = 'NONE' },
            ['@variable'] = { fg = colors.white, bg = 'NONE' },
            ['@keyword.import'] = { fg = colors.purple, bg = 'NONE' },
            ['@keyword.directive.c'] = { fg = colors.purple, bg = 'NONE' },
            ['@type.builtin'] = { fg = '#00bf00', bg = 'NONE' },
            ['@type.builtin.c'] = { fg = '#00bf00', bg = 'NONE' },
            -- ['@property'] = { fg = colors.magenta, bold = true },
          }
        end,
      },

      -- Disable or enable colorscheme extensions
      extensions = {
        telescope = true,
        notify = true,
        mini = true,
        treesitter = true,
        whichkey = true,
      },
    }
    vim.cmd 'colorscheme cyberdream'
  end,
}
