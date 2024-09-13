return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- cmp_nvim_lsp
        "neovim/nvim-lspconfig", -- lspconfig
        "onsails/lspkind-nvim", -- lspkind (VS pictograms)
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*",
            build = "make install_jsregexp",
            dependencies = {"rafamadriz/friendly-snippets"}, -- Snippets
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
                -- https://github.com/rafamadriz/friendly-snippets/blob/main/snippets/go.json
            end
        }, {"saadparwaiz1/cmp_luasnip", enabled = true}
    },
}
