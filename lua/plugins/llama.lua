return {
  {
    'ggml-org/llama.vim',
    init = function()
      vim.g.llama_config = {
        endpoint = 'http://10.94.180.148:8012/infill',
      }
    end,
    config = function()
      vim.api.nvim_set_hl(0, 'llama_hl_hint', { fg = '#444444', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'llama_hl_info', { fg = '#222222', bg = 'NONE' })
    end,
  },
}
