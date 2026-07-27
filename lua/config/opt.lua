-- Line numbers
vim.opt.number = true -- Show current line number
vim.opt.relativenumber = true -- Show relative line numbers

-- Tabs and indentation
vim.opt.expandtab = true -- Expand tab to spaces
vim.opt.tabstop = 4 -- Number of spaces for tabs
vim.opt.shiftwidth = 4 -- Default indent width
vim.opt.softtabstop = -1 -- Default indent width
vim.opt.autoindent = true -- Copy indent from current line when starting new one

-- Search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- Lines
vim.opt.wrap = true -- Wrap long lines
vim.opt.scrolloff = 5 -- Always keep 5 lines shown under/above the cursor
vim.opt.foldmethod = "marker" -- Automatically identifies folds
vim.opt.signcolumn = "yes" -- Always draw the sign column
vim.opt.cmdheight = 1 -- Small command window

-- Buffers and autosave
vim.opt.hidden = true -- When off a buffer is unloaded when it is abandoned
vim.opt.backup = false -- Don't do backup while saving a file
vim.opt.writebackup = false -- Don't do backup while editing a file
vim.opt.updatetime = 1000 -- Time (ms) to write the swap file if nothing is typed

-- Spell
vim.opt.spelllang = "es,en" -- Spelling for English and Spanish by default

-- Other
vim.opt.mouse = "a" -- Enable mouse support

-- appearance
vim.opt.background = "dark" -- color schemes that can be light or dark will be made dark

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom
