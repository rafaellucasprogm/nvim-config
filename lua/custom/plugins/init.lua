local catppuccin = require('catppuccin.palettes').get_palette 'mocha'

-- Define custom bubbles theme based on Catppuccin Mocha
local bubbles_theme = {
  normal = {
    a = { fg = catppuccin.red, bg = catppuccin.mantle },
    b = { fg = catppuccin.text, bg = catppuccin.mantle },
    c = { fg = catppuccin.overlay1, bg = catppuccin.mantle },
  },
  insert = { a = { fg = catppuccin.sapphire, bg = catppuccin.mantle } },
  visual = { a = { fg = catppuccin.mauve, bg = catppuccin.mantle } },
  replace = { a = { fg = catppuccin.red, bg = catppuccin.mantle } },
  command = { a = { fg = catppuccin.yellow, bg = catppuccin.mantle } },
  inactive = {
    a = { fg = catppuccin.overlay1, bg = catppuccin.mantle },
    b = { fg = catppuccin.overlay0, bg = catppuccin.mantle },
    c = { fg = catppuccin.overlay0, bg = catppuccin.mantle },
  },
}
-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = bubbles_theme,
        component_separators = '⁞',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = {
          {
            function()
              return '✿'
            end, -- Add the emoji ✿
            separator = { left = '' },
            right_padding = 2,
          },
          { 'mode', separator = '', right_padding = 2 }, -- Add the mode after ✿
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
          '%=',
        },
        lualine_x = {},
        lualine_y = { 'filetype' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    },
  },
  {
    'karb94/neoscroll.nvim',
    opts = {},
  },
}
