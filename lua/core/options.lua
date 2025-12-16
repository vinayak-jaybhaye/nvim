vim.cmd("let g:netrw_liststyle=3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true


-- tabs & indentation
opt.tabstop = 2         -- 1 tab == 2 spaces
opt.shiftwidth = 2      -- >> and << indent by 2 spacer
opt.expandtab = true    -- use spaces instead of tabs
opt.autoindent = true   -- copy indent from current line when starting a new line

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true   -- ignore case when searching
opt.smartcase = true    -- if a search contains uppercase letters, match case
-- opt.incsearch = true    -- show search matches as you type

-- cursor line
opt.cursorline = true   -- highlight the current cursor line

-- appearance
opt.termguicolors = true    -- enable 24-bit RGB colors
opt.background = "dark"     -- set the background to dark
opt.signcolumn = "yes"      -- always show the sign column

-- backspace
opt.backspace = "indent,eol,start"  -- allow backspace in insert mode

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard

-- split windows
opt.splitright = true  -- vertical splits will automatically be to the right
opt.splitbelow = true  -- horizontal splits will automatically be below