return {
  "bluz71/vim-moonfly-colors",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.g.moonflyTransparent = true
    vim.cmd([[colorscheme  moonfly]])
    -- Set neotree, noice and highlight color to support transparent
    vim.cmd("highlight! NeoTreeDotfile guifg=#808080")
    vim.cmd("highlight! NeoTreeMessage guifg=#808080")
    vim.cmd("highlight! NoiceLspProgressTitle guifg=#808080")
    vim.cmd("highlight Visual guibg=#3e4451  guifg=#ffffff")
  end,
}
