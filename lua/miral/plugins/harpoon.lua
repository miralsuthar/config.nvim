return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon: Add to list' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon: Show list' })

    vim.keymap.set('n', '<C-w>', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon: Add to 1' })
    vim.keymap.set('n', '<C-a>', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon: Add to 2' })
    vim.keymap.set('n', '<C-z>', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon: Add to 3' })
    vim.keymap.set('n', '<C-x>', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon: add to 4' })
    vim.keymap.set('n', '<leader><C-w>', function()
      harpoon:list():replace_at(1)
    end, { desc = 'Harpoon: Replace at 1' })
    vim.keymap.set('n', '<leader><C-a>', function()
      harpoon:list():replace_at(2)
    end, { desc = 'Harpoon: Replace at 2' })
    vim.keymap.set('n', '<leader><C-z>', function()
      harpoon:list():replace_at(3)
    end, { desc = 'Harpoon: Replace at 3' })
    vim.keymap.set('n', '<leader><C-x>', function()
      harpoon:list():replace_at(4)
    end, { desc = 'Harpoon: Replace at 4' })
  end,
}
