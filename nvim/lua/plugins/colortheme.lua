return {
  {
    'shaunsingh/nord.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = true
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false
      -- load the colorscheme
      require('nord').set()
      -- Toggle background transparency
      local bg_transparent = true
      local toggle_transparency = function()
        bg_transparent = not bg_transparent
        vim.g.nord_disable_background = bg_transparent
        vim.cmd [[colorscheme nord]]
      end
      vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true})
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    -- priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "main",      -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        bold = true,
        italic = false,
        transparency = true,
        highlight_groups = {
          ColorColumn = { bg = "#1C1C21" },
          Normal = { bg = "none" },                      -- transparent main background
          Pmenu = { bg = "", fg = "#e0def4" },           -- completion menu background
          PmenuSel = { bg = "#4a465d", fg = "#f8f5f2" }, -- selected completion item
          PmenuSbar = { bg = "#191724" },                -- scrollbar background
          PmenuThumb = { bg = "#9ccfd8" },               -- scrollbar thumb
        },
        enable = {
          terminal = false,
          legacy_highlights = false,
          migrations = true,
        },
      })
      -- vim.cmd("colorscheme rose-pine")  -- Uncomment to load by default
    end,
  }
}

