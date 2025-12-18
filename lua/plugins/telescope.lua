return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { 
        "nvim-lua/plenary.nvim",
        {"nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-u>"] = false,     -- disable default scrolling up
                        ["<C-d>"] = false,     -- disable default scrolling down
                        ["<C-j>"] = actions.move_selection_next,        -- move to next result
                        ["<C-k>"] = actions.move_selection_previous,    -- move to previous result
                        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,  -- send selection to quickfix list
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        -- set keymaps
        local keymap = vim.keymap.set
        keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files in cwd" })  -- fuzzy find files
        keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })    -- fuzzy live grep
        keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find Buffers" })   -- find buffers (open files)
        keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help Tags" })    -- help tags (Neovim help)
        keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Search word under cursor" })  -- grep string under cursor
        keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })    -- recently opened files
    end,
}
