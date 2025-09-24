vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

--leader
vim.g.mapleader = " "

--configs
require("config.lazy")
require("config.treesitter")
require("config.telescope")
require("config.nvim-tree")
require("config.harpoon")

--indenting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

--visual
vim.opt.scrolloff = 8

--lines
vim.opt.number = true
vim.opt.relativenumber = true

--clipboard
vim.api.nvim_set_option('clipboard', 'unnamedplus')

--cursor
vim.opt.guicursor = "n-v-c-i:block"
vim.opt.cursorline = false

--bindings
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "save buffer changes" })

--theme
vim.g.nord_contrast = false 
vim.g.nord_borders = false
vim.g.nord_disable_background = true 
vim.g.nord_enable_sidebar_background = false
vim.g.nord_italic = true
vim.g.nord_cursorline_transparent = true
vim.g.nord_uniform_diff_background = false
vim.g.nord_bold = true
require('nord').set()
if vim.g.nord_disable_background
	then vim.cmd("highlight FloatBorder guibg=NONE")
	end

--lsp
require("config.cmp")
vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("rust_analyzer")
