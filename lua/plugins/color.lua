return {
  "miikanissi/modus-themes.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- Default options
    require("modus-themes").setup({
      -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
      -- `auto` will automatically set style based on background set with vim.o.background
      style = "auto",
      variant = "default", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
      transparent = false, -- Transparent background (as supported by the terminal)
      dim_inactive = false, -- "non-current" windows are dimmed
      hide_inactive_statusline = false, -- Hide statuslines on inactive windows. Works with the standard **StatusLine**, **LuaLine** and **mini.statusline**
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
    })
    vim.cmd([[colorscheme modus]])
  end,
}
