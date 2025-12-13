-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
--   https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.wo.relativenumber = false
vim.opt.wrap = true

-- Function to set colorcolumn based on file type
local function set_colorcolumn()
  local ft = vim.bo.filetype
  if ft == "lua" then
    vim.opt.colorcolumn = "81"
  elseif ft == "python" then
    vim.opt.colorcolumn = "89"
  else
    vim.opt.colorcolumn = "101"
  end
end

-- Create an autocmd for file type changes
vim.api.nvim_create_autocmd("FileType", {
  callback = set_colorcolumn,
})
