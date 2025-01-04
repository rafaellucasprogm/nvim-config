-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  --   'akinsho/bufferline.nvim',
  --   version = '*',
  --   dependencies = 'nvim-tree/nvim-web-devicons',
  --   opts = {
  --     options = {
  --       offsets = {
  --         {
  --           filetype = 'neo-tree',
  --           text = '😈',
  --           text_align = 'center',
  --           separator = false,
  --         },
  --       },
  --     },
  --   },
  -- },

  {
    'hat0uma/csvview.nvim',
    config = function()
      require('csvview').setup {
        view = { display_mode = 'border' },
        comments = {
          '--',
        },
      }
    end,
  },
}
