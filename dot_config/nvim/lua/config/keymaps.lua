-- キー入力の待機時間（タイムアウト）の設定
-- デフォルト(1000ms)だと 'j' を1回押したときにもたつくため、500ms に設定
vim.opt.timeoutlen = 500

-- インサートモードで 'jj' を押して Esc (ノーマルモードへ)
vim.keymap.set("i", "jj", "<Esc>", { silent = true, desc = "Exit insert mode" })

-- ノーマルモードで <Leader>w を押すと、行の折り返しの有効/無効を反転させる
vim.keymap.set("n", "<Leader>w", function()
  vim.opt.wrap = not vim.opt.wrap:get()
end, { desc = "行の折り返しを切り替え" })

-- Shift + h/l で前後のバッファへ移動
vim.keymap.set("n", "H", "<cmd>bprevious<cr>", { desc = "前のバッファへ" })
vim.keymap.set("n", "L", "<cmd>bnext<cr>", { desc = "次のバッファへ" })

-- オマケ: バッファを閉じる（削除する）設定
-- :bd (bdelete) を毎回打つのは手間なので、<Leader>c などに割り当てる人が多いです
vim.keymap.set("n", "<Leader>x", "<cmd>bdelete<cr>", { desc = "現在のバッファを閉じる" })
