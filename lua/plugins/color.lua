return {
  "gnmearacaun/zephyr-clear.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- Default options
    vim.cmd([[colorscheme zephyr_clear]])
  end,
}
