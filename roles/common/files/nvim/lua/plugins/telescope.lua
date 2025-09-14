-- install fd and ripgrep - sudo dnf install -y ripgrep fd-find
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'princejoogie/dir-telescope.nvim'
--        'nvim-telescope/telescope-live-grep-args.nvim'
    },
    config = function()
        local telescope = require("telescope")
        --local lga_actions = require("telescope-live-grep-args.actions")

--        telescope.setup {
--          extensions = {
--            live_grep_args = {
--              auto_quoting = true, -- enable/disable auto-quoting
--              -- define mappings, e.g.
--              mappings = { -- extend mappings
--                i = {
--                  ["<S-space>"] = lga_actions.quote_prompt(),
--                  ["<C-space>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
--                  -- freeze the current list and start a fuzzy search in the frozen list
--                  ["<A-space>"] = lga_actions.to_fuzzy_refine,
--                },
--              },
--              -- ... also accepts theme settings, for example:
--              -- theme = "dropdown", -- use dropdown theme
--              -- theme = { }, -- use own theme spec
--              -- layout_config = { mirror=true }, -- mirror preview pane
--            }
--          }
--        }

        telescope.load_extension("dir")
        --telescope.load_extension("live_grep_args")
        telescope.load_extension("fzf")
    end
}
