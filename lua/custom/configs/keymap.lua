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

-- restore the session for the current directory
vim.keymap.set("n", "<leader>Sd", [[<cmd>lua require("persistence").load()<cr>]],
  { noremap = true, silent = true, desc = "Restore Session For Current [D]ir" })

-- restore the last session
vim.keymap.set("n", "<leader>Sl", [[<cmd>lua require("persistence").load({ last = true })<cr>]],
  { noremap = true, silent = true, desc = "Restore [L]ast Session" })

vim.keymap.set('n', '<leader>ca', ":Lspsaga code_action<CR>",
  { noremap = true, silent = true, desc = "[C]ode [A]ctions" })

vim.keymap.set('n', '<leader>cd', ":Lspsaga peek_definition<CR>",
  { noremap = true, silent = true, desc = "Peek [D]efinition" })

vim.keymap.set('n', '<leader>ct', ":Lspsaga peek_type_definition<CR>",
  { noremap = true, silent = true, desc = "Peek [T]ype Definition" })

vim.keymap.set('n', '<leader>cn', ":Lspsaga diagnostic_jump_next<CR>",
  { noremap = true, silent = true, desc = "[N]ext Diagnostic" })

vim.keymap.set('n', '<leader>cp', ":Lspsaga diagnostic_jump_previous<CR>",
  { noremap = true, silent = true, desc = "[P]revious Diagnostic" })

vim.keymap.set('n', '<leader>cf', ":Lspsaga finder<CR>",
  { noremap = true, silent = true, desc = "LspSaga [F]inder" })
