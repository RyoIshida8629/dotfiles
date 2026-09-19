-- クリップボード
vim.opt.clipboard = "unnamedplus" -- レジスタをシステムのクリップボードと同期

-- 行番号（絶対行番号と相対行番号を両方有効にして、現在行のみ絶対行番号で表示）
vim.opt.number = true         -- 絶対行番号有効
vim.opt.relativenumber = true -- 相対行番号有効

-- カーソルハイライト
vim.opt.cursorline = true   -- 現在行のハイライト
vim.opt.cursorcolumn = true -- 現在列のハイライト

-- インデント
vim.opt.expandtab = true   -- Tabキー入力を半角スペースに変換する
vim.opt.tabstop = 2        -- 既存のTab文字を半角スペース何個分として表示するか
vim.opt.shiftwidth = 2     -- 自動インデント（>> など）でずれる幅
vim.opt.softtabstop = 2    -- TabキーやBackSpaceキーでカーソルが動く幅
vim.opt.smartindent = true -- 改行時に自動で適切なインデントを挿入する

-- テキストの折り返し
vim.opt.wrap = false -- テキストの折り返しを無効化
