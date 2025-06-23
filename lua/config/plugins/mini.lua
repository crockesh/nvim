return {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
        local comments = require("mini.comment")
        local cursorword = require("mini.cursorword")
        local git = require("mini.git")
        local hipatterns = require("mini.hipatterns")
        local icons = require("mini.icons")
        local indentscope = require("mini.indentscope")
        local notify = require("mini.notify")
        local statusline = require("mini.statusline")

        comments.setup({})
        cursorword.setup({})
        git.setup({})
        icons.setup({})
        indentscope.setup({})
        notify.setup({})
        statusline.setup({})

        hipatterns.setup({
            highlighters = {
                -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
                fixme     = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
                hack      = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
                todo      = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
                note      = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

                -- Highlight hex color strings (`#rrggbb`) using that color
                hex_color = hipatterns.gen_highlighter.hex_color(),
            }
        })
    end,
}
