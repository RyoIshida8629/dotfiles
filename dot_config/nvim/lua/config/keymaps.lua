-- キー入力の待機時間（タイムアウト）の設定
-- デフォルト(1000ms)だと 'j' を1回押したときにもたつくため、500ms に設定
vim.opt.timeoutlen = 500

-- インサートモードで 'jj' を押して Esc (ノーマルモードへ)
vim.keymap.set("i", "jj", "<Esc>", { silent = true, desc = "Exit insert mode" })

-- 行の折り返し
vim.keymap.set("n", "<Leader>w", function()
  vim.opt.wrap = not vim.opt.wrap:get()
end, { desc = "行の折り返しを切り替え" })

-- バッファ
vim.keymap.set("n", "H", "<cmd>bprevious<cr>", { desc = "前のバッファへ" })
vim.keymap.set("n", "L", "<cmd>bnext<cr>", { desc = "次のバッファへ" })
vim.keymap.set("n", "<Leader>c", "<cmd>bdelete<cr>", { desc = "現在のバッファを閉じる" })
