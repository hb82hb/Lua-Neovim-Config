local set = vim.opt

vim.notify = require("notify")

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.showmatch = true

set.splitbelow = true
set.splitright = true
set.linebreak = true
set.wrap = true
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true

set.relativenumber = false
set.number = true
set.cursorline = true

set.hidden = true


vim.api.nvim_command([[
augroup AutoCompileMarkdown
autocmd BufEnter,BufRead *.md :set spell
augroup END 
]])

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<Space>m", ":MarkdownPreview<CR>")
