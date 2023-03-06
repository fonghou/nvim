local M = {
  "alexghergh/nvim-tmux-navigation",
  dependencies = {
    "preservim/tagbar",
    "ThePrimeagen/harpoon",
  },
  config = function()
    require("nvim-tmux-navigation").setup({
      disable_when_zoomed = true, -- defaults to false
      keybindings = {
        left = "<M-h>",
        down = "<M-j>",
        up = "<M-k>",
        right = "<M-l>",
      },
    })

    local map = vim.keymap.set
    local default_options = { silent = true }

    map("n", "<C-a>", require("harpoon.mark").add_file, default_options)
    map("n", "<C-n>", require("harpoon.ui").nav_next, default_options)
    map("n", "<C-p>", require("harpoon.ui").nav_prev, default_options)
    map("n", "<C-t>", require("harpoon.ui").toggle_quick_menu, default_options)
  end,
}

return M
