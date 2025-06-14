-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Exit interactive mode' })
vim.keymap.set('n', '<leader>b', '<C-o>', { desc = 'Go back' })
vim.keymap.set('n', '<leader>B', '<C-i>', { desc = 'Go forward' })
vim.keymap.set('n', '<leader>.', '<C-^>', { desc = 'Toggle to previous buffer' })
vim.keymap.set('n', '<leader>pa', 'zg', { desc = 'Add to spell list' })
vim.keymap.set('n', '<leader>pr', 'zw', { desc = 'Mark as misspelled' })

vim.keymap.set({ 'n', 'x' }, 's', '<Nop>')

-- sneak
vim.cmd 'map f <Plug>Sneak_s'
vim.cmd 'map F <Plug>Sneak_S'

vim.keymap.set('n', ']e', function()
  vim.diagnostic.goto_next { severity = vim.diagnostic.severity.ERROR }
end, { desc = 'Go to next diagnostic error' })

vim.keymap.set('n', '[e', function()
  vim.diagnostic.goto_prev { severity = vim.diagnostic.severity.ERROR }
end, { desc = 'Go to previous diagnostic error' })

-- Map <leader>l to jump to the last known cursor position in this file
vim.keymap.set('n', '<leader>l', 'g`"', {
  noremap = true, -- Make the mapping non-recursive
  silent = true, -- Don't echo the command being executed
  desc = 'Jump to last known cursor position', -- Description (optional, useful for plugins like which-key)
})

-- vim: ts=2 sts=2 sw=2 et
