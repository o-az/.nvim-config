local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "c",
    "html",
    "javascript",
    "jsdoc",
    "json",
    "lua",
    "luadoc",
    "luap",
    "markdown",
    "markdown_inline",
    "python",
    "query",
    "regex",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "yaml",
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = { -- lua stuff
    "lua-language-server",
    "stylua", -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier", -- c/cpp stuff
    "clangd",
    "clang-format",
    "vscode-json-language-server",
    "yamlls",
    "jsonls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- START PLUGINS I INSTALLED
M.copilot = {
  copilot_node_command = "/Users/o/.nvm/versions/node/v18.18.0/bin/node",
  layout = {
    position = "right",
    ratio = 0.5,
  },
  panel = {
    enabled = false,
  },
  suggestion = {
    enabled = true,
    debounce = 100,
    keymap = {
      -- ctrl+[
      jump_prev = "<C-[>",
      jump_next = "<C-]>",
      -- tab
      accept = "<Tab>",
    },
  },
}

-- M.cmp = {
--     sources = {{
--         name = "nvim_lsp",
--         group_index = 2
--     }, {
--         name = "buffer",
--         group_index = 2
--     }, {
--         name = "copilot",
--         group_index = 2
--     }, {
--         name = "luasnip",
--         group_index = 2
--     }, {
--         name = "nvim_lua",
--         group_index = 2
--     }, {
--         name = "path",
--         group_index = 2
--     }}
-- }
-- END PLUGINS I INSTALLED

return M
