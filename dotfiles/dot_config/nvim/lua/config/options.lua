vim.opt.clipboard = "unnamedplus" -- レジスタをシステムのクリップボードと同期

-- システムのクリップボードからputする時は改行コードをLFにする
if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
    name = 'win32yank-wsl',
    copy = {
      ['+'] = 'win32yank.exe -i --crlf',
      ['*'] = 'win32yank.exe -i --crlf',
    },
    paste = {
      ['+'] = 'win32yank.exe -o --lf',
      ['*'] = 'win32yank.exe -o --lf',
    },
    cache_enabled = 0,
  }
end

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

-- dropbar.nvimの表示
vim.ui.select = require('dropbar.utils.menu').select

vim.o.pumborder = 'rounded' -- ポップアップメニューに罫線を追加
vim.opt.completeopt = { 'menu', 'menuone', 'noselect', 'fuzzy', 'popup' } -- popupを入れると候補の説明がプレビューされる

-- LSPの補完を自動で有効化
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

-- HACK: ドキュメントポップアップに無理やりボーダーを付ける
-- 現状 winborder や completeopt=popup だけではドキュメントfloatのボーダーを制御できない
-- https://github.com/neovim/neovim/issues/38248
-- 将来的に completepopup オプション等が実装されればこのワークアラウンドは不要になる
local orig_complete_set = vim.api.nvim__complete_set
vim.api.nvim__complete_set = function(...)
  local result = orig_complete_set(...)
  if result and result.winid then
    pcall(vim.api.nvim_win_set_config, result.winid, { border = 'rounded' })
  end
  return result
end
