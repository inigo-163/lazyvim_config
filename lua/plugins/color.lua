return {
  "Mofiqul/adwaita.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    vim.g.adwaita_darker = true -- for darker version
    vim.g.adwaita_disable_cursorline = true -- to disable cursorline
    vim.g.adwaita_transparent = false -- makes the background transparent
    vim.cmd([[colorscheme adwaita]])
  end,
}
