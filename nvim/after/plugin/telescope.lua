local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ss', function()
    local input_string = vim.fn.input("Search For > ")
    if (input_string == '') then
        return
    end
    builtin.grep_string({
        search = input_string,
    })
end)

