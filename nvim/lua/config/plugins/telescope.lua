-- return {
--   "nvim-telescope/telescope.nvim",
--   tag = "0.1.8",
--   dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
--   config = function()
--     require("telescope").setup({
-- 	defaults = {
-- 		file_ignore_patterns = { "%.git/", "node_modules" },
--     		hidden = true, -- This enables showing hidden files (starting with dot)
-- 		find_command = { "fd", "--type", "f", "--hidden", "--no-ignore" },
--   	},
--   	pickers = {
--     		find_files = {
--       			hidden = true,
--     		},
--     		live_grep = {
--       			additional_args = function()
--         		return { "--hidden" }
--       			end
--     		}
--   	},
-- 	})
--   end,
-- }
return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim","nvim-telescope/telescope-file-browser.nvim"},
  opts = {
    defaults = {
      find_command = { "fd", "--type", "f", "--hidden", "--no-ignore" },
    },
    pickers = {
      find_files = {
        find_command = { "fd", "--type", "f", "--hidden", "--no-ignore" },
        hidden = true,
      },
    },
    extensions = {
      file_browser = {
        hidden = true,
        respect_gitignore = false,
      },
    },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("file_browser")
  end,
}

