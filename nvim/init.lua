require("config.lazy")

-- Set relative numbers and make them look nicer
vim.wo.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#585b70" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#585b70" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#fab387", bold = true })

-- Fix default behaviour of :edit so it shows hidden files
vim.opt.wildignore:remove(".git") -- If it's in there
vim.opt.wildignore:remove(".*")   -- Crucial: allows dotfiles to appear

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>fh", function()
  require("telescope.builtin").find_files({
    hidden = true,
    find_command = { "fd", "--type", "f", "--hidden", "--strip-cwd-prefix" },
  })
end, { desc = "Find files (hidden)" })


-- Customise the colours of the relative numbers

