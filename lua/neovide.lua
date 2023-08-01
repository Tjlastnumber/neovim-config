vim.o.guifont = "CaskaydiaCove Nerd Font:h13"

vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 1
vim.g.neovide_padding_left = 1
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_theme = 'auto'
vim.g.neovide_refresh_rate = 60

-- Helper function for transparency formatting
local alpha = function()
  return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.8
vim.g.transparency = 0.8
vim.g.neovide_background_color = "#0f1117" .. alpha()

vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0

vim.g.neovide_scroll_animation_length = 0.3

vim.g.neovide_input_macos_alt_is_meta = false
vim.g.neovide_input_ime = true
