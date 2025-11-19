return {
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = true, -- enables the Mirage variant
      })
      vim.cmd("colorscheme ayu-mirage")
    end,
  },
}
