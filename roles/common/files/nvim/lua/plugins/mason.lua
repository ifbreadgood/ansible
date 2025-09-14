return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-lint",
        "mhartington/formatter.nvim",
    },
    config = function()
        require("mason").setup()
        -- require("mason-lspconfig").setup{
        --     ensure_installed = {
        --         "bashls",
        --         "ansiblels",
        --         "docker_compose_language_service",
        --         "dockerls",
        --         "terraformls",
        --         -- "ts_ls",
        --         "jinja_lsp",
        --         "helm_ls",
        --         "lua_ls",
        --         -- "pylsp",
        --         -- "basedpyright",
        --         --"pyre",
        --         --"pyright",
        --         "rust_analyzer",
        --         "yamlls",
        --         --"zls",
        --         -- "gopls",
        --         -- "html",
        --         -- "cssls",
        --         --"jdtls",
        --         --"svelte",
        --         --"angularls",
        --     },
        -- }

        require("lspconfig").bashls.setup {}
        require("lspconfig").ansiblels.setup {}
        require("lspconfig").docker_compose_language_service.setup {}
        require("lspconfig").dockerls.setup {}
        require("lspconfig").terraformls.setup {}
        -- require("lspconfig").terragrunt_ls.setup {}
        require("lspconfig").ts_ls.setup {}
        require("lspconfig").jinja_lsp.setup {}
        require("lspconfig").helm_ls.setup {}
        require("lspconfig").lua_ls.setup {}
        -- require("lspconfig").pylsp.setup {}
        -- require("lspconfig").basedpyright.setup {}
        --require("lspconfig").pyre.setup {}
        --require("lspconfig").pyright.setup {}
        require("lspconfig").rust_analyzer.setup {}
        require("lspconfig").yamlls.setup {}
        --require("lspconfig").zls.setup {}
        -- require("lspconfig").gopls.setup {}
        --require("lspconfig").jdtls.setup {}
        --require("lspconfig").svelte.setup {}
        --require("lspconfig").angularls.setup {}
        require("lspconfig").html.setup {}
        require("lspconfig").oxlint.setup {}
        require("lspconfig").ts_ls.setup {}

        --linters
        --actionlint
        --shellharden (keywords: bash)
        --shellcheck (keywords: bash)
        --tfsec (keywords: terraform)
        --tflint (keywords: terraform)
        --yamllint (keywords: yaml)
        --hadolint (keywords: docker)
        --actionlint (keywords: yaml)
        --ansible-lint (keywords: ansible)
        --jinja-lsp jinja_lsp (keywords: django, jinja, nunjucks)


        require('lint').linters_by_ft = {
            go = {'staticcheck', 'revive', 'golangcilint'},
        }
        vim.api.nvim_create_autocmd({ "BufWritePost", "BufRead" }, {
          callback = function()
            require("lint").try_lint()
          end,
        })

        -- Utilities for creating configurations
        local util = require "formatter.util"

        -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
        require("formatter").setup {
          -- Enable or disable logging
          logging = true,
          -- Set the log level
          log_level = vim.log.levels.WARN,
          -- All formatter configurations are opt-in
          filetype = {
            -- Formatter configurations for filetype "lua" go here
            -- and will be executed in order
--            lua = {
--              -- "formatter.filetypes.lua" defines default configurations for the
--              -- "lua" filetype
--              require("formatter.filetypes.lua").stylua,
--
--              -- You can also define your own configuration
--              function()
--                -- Supports conditional formatting
--                if util.get_current_buffer_file_name() == "special.lua" then
--                  return nil
--                end
--
--                -- Full specification of configurations is down below and in Vim help
--                -- files
--                return {
--                  exe = "stylua",
--                  args = {
--                    "--search-parent-directories",
--                    "--stdin-filepath",
--                    util.escape_path(util.get_current_buffer_file_path()),
--                    "--",
--                    "-",
--                  },
--                  stdin = true,
--                }
--              end
--            },

            go = {
                function ()
                    return {
                        exe = "go",
                        args = {
                            "fmt",
                        },
                        stdin = true,
                    }
                end
            },
            -- Use the special "*" filetype for defining formatter configurations on
            -- any filetype
            ["*"] = {
              -- "formatter.filetypes.any" defines default configurations for any
              -- filetype
              -- require("formatter.filetypes.any").remove_trailing_whitespace,
              -- Remove trailing whitespace without 'sed'
              -- require("formatter.filetypes.any").substitute_trailing_whitespace,
            }
          }
        }
--        local augroup = vim.api.nvim_create_augroup
--        local autocmd = vim.api.nvim_create_autocmd
--        augroup("__formatter__", { clear = true })
--        autocmd("BufWritePre", {
--            group = "__formatter__",
--            command = ":Format",
--        })
    end,
}
