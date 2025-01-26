return {
  "sekke276/dark_flat.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("dark_flat").setup({
      transparent = true,
      colors = {
        gray = "#808080",
        white = "#FFFFFF",
        smoke = "#848884",
      },
      themes = function(colors)
        return {
          CursorLineNr = { fg = colors.white },
          LineNr = { fg = colors.gray },
          Visual = { bg = colors.smoke },
        }
      end,
      italics = true,
    })
    vim.cmd("colorscheme dark_flat")
    -- Set neotree and noice color to support transparent
    vim.cmd("highlight! NeoTreeDotfile guifg=#808080")
    vim.cmd("highlight! NeoTreeMessage guifg=#808080")
    vim.cmd("highlight! NoiceLspProgressTitle guifg=#808080")
  end,
}
