return { {
  'TheBlob42/houdini.nvim',
  config = function()
    require('houdini').setup { mappings = { 'jj' } }
  end,
} }
