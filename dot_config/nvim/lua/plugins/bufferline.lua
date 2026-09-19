return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      mode = "buffers", -- バッファ一覧として表示
      diagnostics = "nvim_lsp",
      always_show_bufferline = true,
    },
  }
}
