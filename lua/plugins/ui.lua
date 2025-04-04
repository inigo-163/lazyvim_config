return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 ▄█  ███▄▄▄▄    ▄█     ▄██████▄   ▄██████▄  
███  ███▀▀▀██▄ ███    ███    ███ ███    ███ 
███▌ ███   ███ ███▌   ███    █▀  ███    ███ 
███▌ ███   ███ ███▌  ▄███        ███    ███ 
███▌ ███   ███ ███▌ ▀▀███ ████▄  ███    ███ 
███  ███   ███ ███    ███    ███ ███    ███ 
███  ███   ███ ███    ███    ███ ███    ███ 
█▀    ▀█   █▀  █▀     ████████▀   ▀██████▀  
                                            
  ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      local lualine_require = require("lualine_require")
      lualine_require.require = require
      vim.o.laststatus = vim.g.lualine_laststatus
      opts.options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = " ", right = " " },
        section_separators = { left = " ", right = " " },
        globalstatus = vim.o.laststatus == 3,
        disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
      }
    end,
  },
}
