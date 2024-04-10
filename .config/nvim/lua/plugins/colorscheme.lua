return {
  -- {
  --   "marko-cerovac/material.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("material").setup({
  --       custom_highlights = {
  --         LineNr = { fg = "#959DAA" },
  --       },
  --       custom_colors = function(colors)
  --         colors.editor.bg = "#0f0f0f"
  --       end,
  --     })
  --     vim.g.material_style = "deep ocean"
  --   end,
  -- },
  --
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent = false,
  --     }
  --   end,
  -- },
  --
  -- { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      term_colors = true,
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    },
  },
}
