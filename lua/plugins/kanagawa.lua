-- Default options:
require('kanagawa').setup({
  compile = false,    -- enable compiling the colorscheme
  undercurl = true,   -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = false,     -- do not set background color
  dimInactive = false,     -- dim inactive window `:h hl-NormalNC`
  terminalColors = true,   -- define vim.g.terminal_color_{0,17}
  colors = {
    palette = { -- add/modify theme and palette colors
      waveAqua1 = "#4d9375"
    },
    theme = {
      dragon = {
        ui = {
          bg = "#131313"
        }
      },
      all = {}
    },
  },
  overrides = function(colors)
    return {
      Keyword = { fg = colors.palette.waveAqua1 },
      Boolean = { fg = colors.palette.waveAqua1 },
      Conditional = { fg = colors.palette.waveAqua1 },
      Label = { fg = colors.palette.waveAqua1 },
      Repeat = { fg = colors.palette.waveAqua1 },
      Operator = { fg = colors.palette.waveAqua1 },
      Macro = { fg = colors.palette.waveAqua1 },
      Function = { fg = colors.palette.springGreen },
      String = { fg = colors.palette.sakuraPink },
      Typedef = { fg = colors.palette.crystalBlue },
      Tag = { fg = colors.palette.carpYellow }
    }
  end,
  theme = "wave", -- Load "wave" theme when 'background' option is not set
  background = {
                         -- map the value of 'background' option to a theme
    dark = "dragon",     -- try "dragon" !
    light = "lotus"
  },
})

vim.cmd [[colorscheme kanagawa-dragon]]
