-- キー入力の待機時間（タイムアウト）の設定
-- デフォルト(1000ms)だと 'j' を1回押したときにもたつくため、500ms に設定
vim.opt.timeoutlen = 500

-- インサートモードで 'jj' を押して Esc (ノーマルモードへ)
vim.keymap.set("i", "jj", "<Esc>", { silent = true, desc = "Exit insert mode" })
