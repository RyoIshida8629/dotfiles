return {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim"
  },
  keys = {
    {"<leader>nv", "<cmd>Navbuddy<cr>", desc = "Nav"},
  },
  config = function ()
    local actions = require("nvim-navbuddy.actions")
    local navbuddy = require("nvim-navbuddy")
    navbuddy.setup({
      window = {
        border = "double"
      },
      mappings = {
        ["j"] = actions.next_sibling(),
        ["k"] = actions.previous_sibling(),
        ["h"] = actions.parent(),
        ["l"] = actions.children(),
      },
      lsp = {auto_attach = true}
    })
  end
}
