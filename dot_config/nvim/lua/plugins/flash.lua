return{
'nvim-pack/nvim-spectre', --搜索插件
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
            { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
            { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
            { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
            {
                "<leader>j",
                mode = { "n" },
                function()
                    require("flash").jump({
                        search = { mode = "search", max_length = 0 },
                        label = { after = { 0, 0 } },
                        pattern = "^"
                    })
                end,
                desc = "Toggle Flash Search"
            },

        },
    },
}
