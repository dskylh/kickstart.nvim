local def_opt = { noremap = true, silent = true }

vim.keymap.set(
  { "n", "x" },
  "<leader>rr",
  function() require('telescope').extensions.refactoring.refactors() end,
  def_opt
)

vim.keymap.set("n", "[c", function()
  require("treesitter-context").go_to_context()
end, { silent = true })

vim.keymap.set("n", "<C-s>", ":w<CR>", def_opt)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", def_opt)
vim.keymap.set("n", "<S-l>", ":bn<CR>", def_opt)
vim.keymap.set("n", "<S-h>", ":bp<CR>", def_opt)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', def_opt)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', def_opt)
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', def_opt)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', def_opt)
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", def_opt)
vim.keymap.set("n", "<leader>x", ":bd<CR>", def_opt)
vim.keymap.set("n", "<leader>q", ":TroubleToggle<CR>", def_opt)
vim.keymap.set("n", "<leader>;", ":Dashboard<CR>", def_opt)
