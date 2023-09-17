local fn = vim.fn

-- Automatically install Packer.
local installPath = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(installPath)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        installPath,
    }
    print 'Installing packer. Restart Neovim.'
    -- Only used if packer is installed in packer/opt/ instead of packer/start
    --vim.cmd 'packadd packer.nvim'
end

-- Reload Neovim whenever you save the plugins.lua file.
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Only move on if we can require Packer.
local ok, packer = pcall(require, 'packer')
if not ok then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require('packer.util').float {border = 'rounded'}
        end,
    }
}

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim' -- Have Packer manage itself

    -- A plugin that lets you pin files globally
    use('ThePrimeagen/harpoon')

    -- Comments
    use('tpope/vim-commentary')

    use {
            'stevearc/oil.nvim',
            config = function() require('oil').setup() end
        }

    -- Icons
    use('nvim-tree/nvim-web-devicons')

    -- Lua Line - Status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Current Theme
    use('aktersnurra/no-clown-fiesta.nvim')

    -- Package Manger + LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    if packer_bootstrap then
		require("packer").sync()
    end
end)
