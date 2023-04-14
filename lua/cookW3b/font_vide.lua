vim.g.neovide_scale_factor = 1.2
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<leader>a", function()
  change_scale_factor(1.25)
end)
vim.keymap.set("n", "<leader>q", function()
  change_scale_factor(1/1.25)
end)

vim.opt.guifont = "CascaydiaCove NFM"
