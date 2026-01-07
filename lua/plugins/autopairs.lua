return {
    "windwp/nvim-autopairs",
    event = {"InsertEnter"},
    dependencies = {
        "hrsh7th/nvim-cmp",
    },
    config = function()
        -- import nvim-autopairs safely 
        local npairs = require("nvim-autopairs")

        -- configure autopairs
        npairs.setup({
            check_ts = true,
            ts_config = {
                lua = { "string", "source" },  -- don't add pairs in lua comments
                javascript = { "string", "template_string" },  -- don't add pairs in js comments or template strings
                java = false,                 -- disable for java
            },
        })

        -- import cmp-nvim-autopairs safely
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")

        -- make autopairs and cmp work together
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
}   