return {
    { "marko-cerovac/material.nvim",
    priority = 1000,
    config = function()
        vim.g.material_style = "deep ocean"
        vim.cmd.colorscheme("material")
    end, },
  }