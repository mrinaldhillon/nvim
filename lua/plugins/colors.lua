if true then
  return {
    --{ "lifepillar/vim-solarized8" },
    --{ "LazyVim/LazyVim", opts = { colorscheme = "solarized8" } },
  }
end
return {
  { "xiyaowong/transparent.nvim", enabled = false },
  {
    "f-person/auto-dark-mode.nvim",
    enabled = false,
    config = function()
      local auto_dark_mode = require("auto-dark-mode")

      auto_dark_mode.setup({
        update_interval = 1000, -- Check every second
        set_dark_mode = function()
          vim.o.background = "dark" -- Global option for setting the background
          vim.cmd("colorscheme solarized8") -- Dark theme
        end,
        set_light_mode = function()
          vim.o.background = "light" -- Global option for setting the background
          vim.cmd("colorscheme solarized8") -- Light theme
        end,
      })
      auto_dark_mode.init()
    end,
  },
}
