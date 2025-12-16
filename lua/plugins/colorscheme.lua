return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        local bg = "#011628"
        local bg_dark = "#011423"
        local bg_highlight = "#143652"
        local bg_search = "#0A64AC"
        local bg_visual = "#275378"
        local fg = "#CBE0F0"
        local fg_dark = "#B4D0E9"
        local fg_gutter = "#627E97"
        local border = "#547998"

        require("tokyonight").setup({
            style = "night",
            transparent = true,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
                sidebars = "transparent",
                floats = "transparent",
            },
            sidebars = { "qf", "help", "terminal", "packer", "NvimTree"},
            day_brightness = 0.3,
            hide_inactive_statusline = false,
            dim_inactive = false,
            lualine_bold = false,
            on_colors = function(colors)
                colors.bg = bg
                colors.bg_dark = bg_dark
                colors.bg_highlight = bg_highlight
                colors.bg_search = bg_search
                colors.bg_visual = bg_visual
                colors.fg = fg
                colors.fg_dark = fg_dark
                colors.fg_gutter = fg_gutter
                colors.border = border
            end,
        })
        vim.cmd([[colorscheme tokyonight]])
    end,
}