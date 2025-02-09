return {
  "vague2k/vague.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("vague").setup({
      transparent = true, -- optional configuration here
    })
    vim.cmd([[colorscheme vague]])
    -- Set neotree and noice color to support transparent
    vim.cmd("highlight! NeoTreeDotfile guifg=#808080")
    vim.cmd("highlight! NeoTreeMessage guifg=#808080")
    vim.cmd("highlight! NoiceLspProgressTitle guifg=#808080")
  end,
}
