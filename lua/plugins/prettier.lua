local prettier = require("prettier")

prettier.setup({
  bin = 'prettier',
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "json",
    "scss",
    "markdown",
    "typescript",
    "yaml",
    "vue"
  },
  cli_options = {
    singleQuote = false,
    single_attribute_per_line = false,
    semi = false
  }
})
