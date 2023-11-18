require('dashboard').setup(
  {
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' config',
          icon_hl = '@variable',
          group = 'Label',
          action = 'edit /home/taha/.config/nvim/init.lua',
          key = 'c',
        },
        {
          desc = ' Colorscheme',
          icon_hl = '@variable',
          group = 'Label',
          action = 'Telescope colorscheme',
          key = 't',
        },
        {
          desc = ' Open Last Session',
          icon_hl = '@variable',
          group = 'Label',
          action = 'lua require("persistence").load({ last = true })',
          key = 'l',
        },
      },
    },
  }
)
