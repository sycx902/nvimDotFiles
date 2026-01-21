return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua", "bash", "vim", "vimdoc", "php", "javascript", "typescript"
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}

