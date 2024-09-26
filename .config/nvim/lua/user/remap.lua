-- black hole register
vim.keymap.set({'n', 'v'}, '<Leader>d', '"_d')
vim.keymap.set('v', '<Leader>p', '"_dP')

-- global clipboard 
vim.keymap.set({'n', 'v'}, '<Leader>y', '"+y')

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- REMAP <C-j> and <C-k> for <C-n> and <C-p>
-- still debating this one

vim.keymap.set("n", "<Leader>bp", ":bprev<CR>")
vim.keymap.set("n", "<Leader>bn", ":bnext<CR>")
