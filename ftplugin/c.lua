vim.api.nvim_create_autocmd({ 'FocusLost', 'BufLeave', 'BufWinLeave', 'InsertLeave' }, {
  callback = function()
    if vim.bo.buftype == '' then
      vim.cmd 'silent! w'
    end
  end,
  desc = 'Auto Save',
})
