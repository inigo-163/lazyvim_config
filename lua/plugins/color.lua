return {
  "Th3Whit3Wolf/space-nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    vim.g.space_nvim_transparent_bg = true
    vim.cmd("colorscheme space-nvim")
  end,
}
