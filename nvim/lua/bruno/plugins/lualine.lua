return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        theme = "material",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { { "filename", path = 3 } },
        lualine_c = { "diagnostics" },
        lualine_x = {},
        lualine_y = { "" },
        lualine_z = { "filetype" },
      },
    })
  end,
}
