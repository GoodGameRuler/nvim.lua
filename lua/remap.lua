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

-- Autocomplete NVime Compe
-- inoremap <silent><expr> <C-Space> compe#complete()
-- local compe = require('compe')
-- vim.keymap.set("n", "<C-Space>", compe#complete())
-- inoremap <silent><expr> <CR>      compe#confirm('<CR>')
-- inoremap <silent><expr> <C-e>     compe#close('<C-e>')
-- inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
-- inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

-- Todo Commands
vim.keymap.set('n', '<leader>td', ':TodoTelescope keywords=TODO,FIX,BUG<CR>')
vim.keymap.set('n', '<leader>tl', ':TodoTrouble cwd=./<CR>')

-- Trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)
