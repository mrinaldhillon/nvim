if true then
  return {
    { "maxmx03/solarized.nvim" },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "solarized",
      },
    },
    {
      "f-person/auto-dark-mode.nvim",
      opts = {
        update_interval = 1000,
        set_dark_mode = function()
          vim.api.nvim_set_option_value("background", "dark", {})
          vim.cmd("colorscheme solarized")
        end,
        set_light_mode = function()
          vim.api.nvim_set_option_value("background", "light", {})
          vim.cmd("colorscheme solarized")
        end,
      },
    },
  }
end

return {
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {
      transparent = {
        enabled = false,
        pmenu = true,
        normal = true,
        normalfloat = true,
        neotree = true,
        nvimtree = true,
        whichkey = true,
        telescope = true,
        lazy = true,
        mason = true,
      },
    },
    config = function(_, opts)
      vim.o.termguicolors = true
      -- vim.o.background = "dark"
      -- vim.o.cursorline = false
      require("solarized").setup(opts)
      vim.cmd.colorscheme("solarized")
    end,
  },
}
