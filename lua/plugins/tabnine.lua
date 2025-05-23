return {
  "tzachar/cmp-tabnine",
  build = LazyVim.is_win() and "pwsh -noni .\\install.ps1" or "./install.sh",
  opts = {
    max_lines = 1000,
    max_num_results = 3,
    sort = true,
  },
  config = function(_, opts)
    require("cmp_tabnine.config"):setup(opts)
  end,
}
