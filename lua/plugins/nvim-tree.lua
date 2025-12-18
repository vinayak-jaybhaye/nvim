return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup({
            view = {
                width = 30,
                relativenumber = true,
            },
            -- change folder arrow icons
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "▶", -- when folder is closed
                            arrow_open = "▼",    -- when folder is open
                        },
                    },
                },
            },

            -- disable window picker for explorer to work well with window splits

            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            filters = {         -- show hidden files
                dotfiles = true,
            },
            git = {
                enable = true,  -- enable git integration
            },
        })


        -- keymaps for nvim-tree
        local keymap = vim.keymap.set

        -- keymap.set(mode, key, action, opts)

        keymap("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
        keymap("n", "<leader>et", "<cmd>NvimTreeFocus<CR>", { desc = "Focus NvimTree" })
        keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
        keymap("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Find file in tree" })
        keymap("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh tree" })
        keymap("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse tree" })

    end,
}
