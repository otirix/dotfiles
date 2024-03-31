return {
  {
    'Exafunction/codeium.vim',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function()
        return vim.fn['codeium#Accept']()
      end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function()
        return vim.fn['codeium#CycleCompletions'](1)
      end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function()
        return vim.fn['codeium#CycleCompletions'](-1)
      end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function()
        return vim.fn['codeium#Clear']()
      end, { expr = true, silent = true })
    end,
  },

  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    opts = function(_, opts)
      local logo = [[
                
         ██████╗ ████████╗██╗██████╗ ██╗██╗  ██╗        
         ██╔═══██╗╚══██╔══╝██║██╔══██╗██║╚██╗██╔╝        
         ██║   ██║   ██║   ██║██████╔╝██║ ╚███╔╝         
         ██║   ██║   ██║   ██║██╔══██╗██║ ██╔██╗         
         ╚██████╔╝   ██║   ██║██║  ██║██║██╔╝ ██╗        
          ╚═════╝    ╚═╝   ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝        
                                                         
 ]]

      logo = string.rep('\n', 8) .. logo .. '\n\n'
      opts.config.header = vim.split(logo, '\n')
    end,
  },

  'xiyaowong/nvim-transparent',
}

