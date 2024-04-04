return {
  {
    "marko-cerovac/material.nvim",
    priority = 1000,
    config = function()
      require("material").setup({
        custom_highlights = {
          LineNr = { fg = "#959DAA" },
        },
      })
      vim.g.material_style = "deep ocean"
      vim.cmd.colorscheme("material")
    end,
  },
}
