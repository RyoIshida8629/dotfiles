-- ~/.config/nvim/lua/config/autocmds.lua

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- "my_nvim_rc" というグループを作成（重複定義を防ぐため）
local my_augroup = augroup("my_nvim_rc", { clear = true })

-- ヤンク時のハイライト
autocmd("TextYankPost", {
  group = my_augroup,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 100 })
  end,
})
