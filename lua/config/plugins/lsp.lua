return {
    "neovim/nvim-lspconfig",
    dependencies = {
        'saghen/blink.cmp',
    },
    config = function()
        local set = vim.lsp.config
        local enable = vim.lsp.enable
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        set('lua_ls', {
            on_init = function(client)
                if client.workspace_folders then
                    local path = client.workspace_folders[1].name
                    if
                        path ~= vim.fn.stdpath('config')
                        and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
                    then
                        return
                    end
                end

                client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                    runtime = {
                        version = 'LuaJIT',
                        path = {
                            'lua/?.lua',
                            'lua/?/init.lua',
                        },
                    },
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                        }
                    }
                })
            end,
            capabilities = capabilities,
            settings = {
                Lua = {}
            }
        })
        
        set('prolog_lsp', {
            cmd = { 'swipl',
                '-g', 'use_module(library(lsp_server))',
                '-g', 'lsp_server:main',
                '-t', 'halt',
                '--', 'stdio' },
            root_markers = {'.git'},
            filetypes = {'prolog'},
        })

        enable({"lua_ls", "prolog_lsp"})
    end
}
