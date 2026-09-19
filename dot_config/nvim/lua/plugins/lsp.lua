return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Masonの初期化
    require("mason").setup()

    -- mason-lspconfigの初期化
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",       -- Lua用
        "intelephense", -- PHP用
      },
    })

    -- Neovim 0.11仕様: vim.lsp.enable で有効化する
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("intelephense")

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(event)
        local opts = { buffer = event.buf }
        -- ▼ 定義ジャンプ (Go to Definition)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        -- ▼ ドキュメント・型情報のホバー表示
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        -- ▼ 参照元一覧 (Go to References)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        -- ▼ 変数/関数名の一括置換 (Rename)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      end,
    })
  end,
}
