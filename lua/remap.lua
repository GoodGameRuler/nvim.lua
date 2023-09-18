vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>")

-- set clipboard
vim.o.clipboard = unamedplus

-- :so is source

-- Lets you move text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Half Page Junping keeps cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps search terms in the middle of the screen "/ or ?"
-- zv accounts for code folds
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Select and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Marks
vim.keymap.set("n", "<leader><leader>", "`")
-- vim.keymap.set("n", "<leader>M", "m")

-- FML - Troll 
-- vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Mason
vim.keymap.set("n", "<leader>ma", ":Mason<CR>")

-- LSPInfo
vim.keymap.set("n", "<leader>li", ":LspInfo<CR>")

-- VimBeGood
-- vim.keymap.set("n", "<leader>vb", ":VimBeGood<CR>")

-- Markdown Preview
-- vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>")
-- vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
-- vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})

-- Allow for sudo write
-- vim.keymap.set("n", "<leader>ww", ":SudaWrite<CR>")

-- Oil Tree
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Undo Tree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

-- Packer Sync
vim.keymap.set("n", "<leader>ps", ":PackerSync<CR>")

-- Fuzzy Finder Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fr', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Git Fuzzy Finder
vim.keymap.set('n', '<leader>fg', ':AdvancedGitSearch diff_commit_file<CR>')
