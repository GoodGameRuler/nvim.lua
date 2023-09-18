-- require("no-clown-fiesta").setup({
--     transparent = false, -- Enable this to disable the bg color
--     styles = {
--         -- You can set any of the style values specified for `:h nvim_set_hl`
--         comments = {},
--         keywords = {},
--         functions = {},
--         variables = {},
--         type = { bold = true },
--         lsp = { underline = true }
--     },
-- })

require('nightforest').setup({
    midnight = true, -- Set to `true` to use `midnight` variant to render a deep dark background.
    overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})
