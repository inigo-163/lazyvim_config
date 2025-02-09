return {
  "bluz71/vim-moonfly-colors",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.g.moonflyTransparent = true
    vim.cmd([[colorscheme  moonfly]])
    -- Set neotree and noice color to support transparent
    vim.cmd("highlight! NeoTreeDotfile guifg=#808080")
    vim.cmd("highlight! NeoTreeMessage guifg=#808080")
    vim.cmd("highlight! NoiceLspProgressTitle guifg=#808080")
  end,
}
