local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true
opt.scrolloff = 12

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace (https://vim.fandom.com/wiki/Backspace_and_delete_problems)
opt.backspace = "indent,eol,start"

-- clipboard (https://stackoverflow.com/q/30691466)
-- The above post help me understand this
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

-- Makes a dash apart of the word when hitting dw
opt.iskeyword:append("-")
opt.iskeyword:append("/")
