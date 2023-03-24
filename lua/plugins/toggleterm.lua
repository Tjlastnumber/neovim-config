local status, toggleterm = pcall(require, "toggleterm")

if not status then
  return
end

toggleterm.setup({
  size = 10,
  open_mapping = [[<C-`>]],
  shading_factor = 2,
  direction = "float",
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      height = 100,
      background = "Normal",
    },
  },
})
