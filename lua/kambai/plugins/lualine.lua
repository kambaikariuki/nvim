return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- show lazy updates

    lualine.setup({
      options = {
        theme = "auto",  -- default colors, auto adapts to your colorscheme
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" }, -- optional highlight for updates
          },
          "encoding",
          "fileformat",
          "filetype",
        },
      },
    })
  end,
}
