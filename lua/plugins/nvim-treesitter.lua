return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.filetype.add({
      extension = { rasi = "rasi", rofi = "rasi", wofi = "rasi" },
      filename = {
        ["vifmrc"] = "vim",
      },
      pattern = {
        [".*/waybar/config"] = "jsonc",
        [".*/mako/config"] = "dosini",
        [".*/kitty/.+%.conf"] = "kitty",
        [".*/hypr/.+%.conf"] = "hyprlang",
        ["%.env%.[%w_.-]+"] = "sh",
      },
    })
  end,
}
