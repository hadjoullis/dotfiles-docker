vim.g.mapleader      = ' '

vim.o.expandtab      = true -- use spaces instead of tabs
vim.o.softtabstop    = 2    -- tab keys indents by 2 spaces
vim.o.tabstop        = 2    -- tab keys indents by 2 spaces
vim.o.shiftwidth     = 2    -- >> indents by 2 spaces
vim.o.shiftround     = true -- >> indents to next multiple of 'shiftwidth'

vim.o.number         = true -- show number lines
vim.o.relativenumber = true -- show relative number lines

vim.o.showmatch      = true -- jump to matching brackets when just inserted

vim.o.ignorecase     = true -- ignores the case of a search
vim.o.smartcase      = true -- don't ignore case if given CAPS

vim.o.splitbelow     = true -- open new windows below current window
vim.o.splitright     = true -- open new windows right current window

vim.o.cursorline     = true -- place line under cursor (PLEASE MAKE THIS PRETTIER)
vim.o.colorcolumn    = "80" -- vertical line after 80 chars
vim.o.report         = 0    -- always report touched lines

vim.o.breakindent    = true -- wrapped lines will continue at correct indent

vim.opt.path:append('**')   -- search recursively in current directory
                            -- used in gf, :find, etc.

vim.opt.guicursor    = ""   -- always block cursor
vim.opt.scrolloff    = 10   -- always show last 10 last lines when scrolling
