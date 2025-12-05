-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<Cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<Cr>", { desc = "Previous buffer" })
