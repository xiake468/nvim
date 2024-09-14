return {
   {
		"williamboman/mason.nvim",
		config = function()
            require('mason').setup()
		end,
        opts = {
			registries = {
				"github:nvim-java/mason-registry",
				"github:mason-org/mason-registry",
			},
		},
   },
   {
		"williamboman/mason-lspconfig.nvim",
		config = function()
		    require('mason-lspconfig').setup {
				 ensure_installed = { 'clangd', 'jdtls' },
			}
		end
   },
   {
	    'nvim-java/nvim-java',
	    dependencies = {
		    'nvim-java/lua-async-await',
		    'nvim-java/nvim-java-refactor',
		    'nvim-java/nvim-java-core',
		    'nvim-java/nvim-java-test',
		    'nvim-java/nvim-java-dap',
		    'MunifTanjim/nui.nvim',
		    'neovim/nvim-lspconfig',
		    'mfussenegger/nvim-dap',
		    {
			    'JavaHello/spring-boot.nvim',
			    commit = '218c0c26c14d99feca778e4d13f5ec3e8b1b60f0',
		    },
	    },
    },
    {
		"neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
			"folke/neodev.nvim",
        },
		config = function()
            require('java').setup({})
            require('lspconfig').jdtls.setup{}
		    require('lspconfig')['clangd'].setup{}
		end
   },
}

