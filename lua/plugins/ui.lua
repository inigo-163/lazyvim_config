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
    opts = function()
      local opts = {
        options = {
          section_separators = { left = " ", right = " " },
          component_separators = { left = " ", right = " " },
        },
      }
      return opts
    end,
  },
}
