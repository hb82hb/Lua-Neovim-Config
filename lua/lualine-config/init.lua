local colors = {
  red = '#ca1243',
  grey = '#a0a1a7',
  black = '#383a42',
  real_black = '#141414',
  white = '#f3f3f3',
  light_green = '#83a598',
  purple = '#914ca6',
  green = '#8ec07c',
  blue = '#4676a3',
}

local theme = {
  normal = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.white },
    z = { fg = colors.white, bg = colors.black },
  },
  normal = { a = { fg = colors.real_black, bg = colors.light_green } },
  insert = { a = { fg = colors.real_black, bg = colors.blue } },
  visual = { a = { fg = colors.real_black, bg = colors.purple } },
  replace = { a = { fg = colors.real_black, bg = colors.green } },
}

require('lualine').setup {
    options = {
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        -- theme = theme,
    }
}
