return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {}, -- stop Mason from trying
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nil_ls = {
          mason = false, -- tell LazyVim NOT to use Mason for nil
        },
      },
    },
  },
}
