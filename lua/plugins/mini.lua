return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      require('mini.statusline').setup { use_icons = vim.g.have_nerd_font }

      require('mini.notify').setup()
      require('mini.icons').setup()
      require('mini.sessions').setup()
      require('mini.snippets').setup()

      -- Alt + hjkl
      require('mini.move').setup()

      local starter = require 'mini.starter'
      starter.setup {
        header = io.popen('fortune -s | cowsay -f moose -w'):read('*all'):gsub('$', ''),
        items = {
          starter.sections.sessions(5, true),
          starter.sections.recent_files(5, true),
          starter.sections.recent_files(10, false),
          starter.sections.builtin_actions(),
        },
        footer = '',
        content_hooks = {
          starter.gen_hook.adding_bullet(),
          -- starter.gen_hook.indexing('all', { 'Builtin actions' }),
          starter.gen_hook.aligning('center', 'center'),
        },
      }

      local hipatterns = require 'mini.hipatterns'
      hipatterns.setup {
        highlighters = {
          hex_color = hipatterns.gen_highlighter.hex_color(),
        },
      }

      -- require('mini.tabline').setup()

      vim.cmd 'colorscheme cont'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
