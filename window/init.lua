-- ~/.config/nvim/init.lua
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require 'core.keymap'
require 'core.set'

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git', 'clone', '--filter=blob:none', 
    '--branch=stable', 'https://github.com/folke/lazy.nvim.git', lazypath 
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = { import = "plugins" },  -- ✅ CORRECT - scans lua/plugins/ directory
  rocks = { enabled = false },     -- ✅ No LuaRocks headaches
  install = { missing = true },
})

