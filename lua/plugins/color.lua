return {
  "sekke276/dark_flat.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("dark_flat").setup({
      transparent = true,
      colors = {},
      themes = function(colors)
        return {}
      end,
      italics = true,
    })
    vim.cmd("colorscheme dark_flat")
  end,
}
