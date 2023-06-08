vim.opt.termguicolors = true

require("bufferline").setup {
  options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    -- 使用 nvim 内置lsp
    diagnostics = 'coc',
    -- rest of config ...

    --- count is an integer representing total count of errors
    --- level is a string "error" | "warning"
    --- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
    --- this should return a string
    --- Don't get too fancy as this function will be executed a lot
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
    --- 让出 nvim-tree 的位置
    offsets = {{
      filetype = "NvimTree",
      text = "Directory",
      highlight = "Directory",
      text_align = "left",
      separator = true
    }},
    indicator = {
        icon = '▎', -- this should be omitted if indicator style is not 'icon'
        style = 'underline'
    },
    buffer_close_icon = '󰅖',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    color_icons = true,
    tab_size = 18,
    max_tabs = 5,
    hover = {
      enabled = true,
      delay = 200,
      reveal = { 'close' }
    }
  }
}


vim.keymap.set('n', '<leader>x', ":bdelete! <CR>")
