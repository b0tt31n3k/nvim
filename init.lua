--  _       _ _     _             
-- (_)     (_) |   | |            
--  _ _ __  _| |_  | |_   _  __ _ 
-- | | '_ \| | __| | | | | |/ _` |
-- | | | | | | |_ _| | |_| | (_| |
-- |_|_| |_|_|\__(_)_|\__,_|\__,_|

-- Options
vim.o.number = true
vim.o.mouse = a
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smarttab = true
vim.autoindent = true

-- Mappings
vim.cmd[[nnoremap <C-f> :NvimTreeFocus<CR>
nnoremap <C-i> :Telescope find_files<CR>
nnoremap <C-t> :NvimTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
noremap <C-w> :Bdelete<CR>
nnoremap <C-y> :terminal<CR>]]

-- Remove "How-to disable mouse" button
vim.cmd[[aunmenu PopUp.How-to\ disable\ mouse
aunmenu PopUp.-1-
]]

-- Plugins
require('plugins')
