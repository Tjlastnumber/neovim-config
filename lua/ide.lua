require('ide').setup({
  icon_set = "codicons",
  panels = {
    left = "explorer",
    right = "git"
  },
  panel_groups = {
    explorer = { outline.Name, explorer.Name, bookmarks.Name, terminalbrowser.Name },
    terminal = { terminal.Name },
    git = { changes.Name, commits.Name, timeline.Name, branches.Name }
  }
})
