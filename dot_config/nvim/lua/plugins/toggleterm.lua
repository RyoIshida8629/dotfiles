return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {},
  config = function()
    require('toggleterm').setup()

    -- lazygitをフローティングウィンドウで表示するキーマップの設定
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new {
      cmd = 'lazygit',
      direction = 'float',
      hidden = true,
    }

    vim.keymap.set({ 'n', 't' }, '<leader>g', function()
      lazygit:toggle()
    end, { desc = 'Toggle Lazygit (float)' })
  end,
}
