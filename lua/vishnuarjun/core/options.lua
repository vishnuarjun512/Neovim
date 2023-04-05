local opt = vim.opt --for conciseness

--line numbers
opt.relativenumber=true
opt.number=true

-- tabs & indentation
opt.tabstop=3
opt.shiftwidth=3
opt.expandtab=true
opt.autoindent=true

-- line wrapping
opt.wrap=false

-- search settings
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

--backspace 
--opt.backspace = "indent.eol.start"


-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"


-- split windows
opt.splitright = true
opt.splitbelow = true

--clipboard
opt.clipboard:append("unnamedplus")

-- consider string-string as a single world
opt.iskeyword:append("-")
