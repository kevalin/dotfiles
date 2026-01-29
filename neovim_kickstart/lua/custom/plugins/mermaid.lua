return {
	"kevalin/mermaid.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("mermaid").setup()

		-- Install the tree-sitter parser manually if TSInstall fails
		-- :TSInstall mermaid
	end,
}
