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
      transparent_background = true,

      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    },
  },

  {
    "akinsho/bufferline.nvim",
    init = function()
      local bufline = require("catppuccin.groups.integrations.bufferline")
      function bufline.get()
        return bufline.get_theme()
      end
    end,
  },

  {
    enabled = false,
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "moon",
        disable_background = false,
        disable_float_background = false,
        styles = {
          transparency = true,
        },
        highlight_groups = {
          TreesitterContext = { bg = "NONE" },
          TreesitterContextLineNumber = { bg = "NONE" },
        },
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
