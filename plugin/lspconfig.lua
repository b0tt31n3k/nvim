require("mason").setup()
require("mason-lspconfig").setup {}
require("mason-tool-installer").setup({ensure_installed = { "ts_ls", "html", "cssls" },})
