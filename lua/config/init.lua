local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.mapleader = " "
vim.gmaplocalleader = " "
vim.g.neovide_transparency = 0.9
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.neovide_refresh_rate = 75
vim.opt.clipboard="unnamedplus"

require("config.options")
require("config.keymaps")

require("lazy").setup("plugins")


