local builtin = require('telescope.builtin')

require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "node%_modules/.*" },
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
        ['<C-p>'] = require('telescope.actions.layout').toggle_preview
      }
    }
  },
  pickers = {
    find_files = {
      previewer = false
    },
    live_grep = {
      previewer = false
    }
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  }
}

require("telescope").load_extension "file_browser"

vim.keymap.set('n', '<leader>br', ':Telescope file_browser<cr>')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>FF', ':Telescope find_files hidden=true<cr>')
vim.keymap.set('n', '<leader>sh', builtin.search_history, {})
vim.keymap.set('n', '<leader>rr', builtin.resume, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>FG', ':Telescope live_grep no_ignore=true hidden=true<cr>')
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
