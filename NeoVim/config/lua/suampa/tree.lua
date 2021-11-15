local tree_cb = require('nvim-tree.config').nvim_tree_callback

require'nvim-tree'.setup({
    update_focused_file = {
        enable = true,
    },
    view = {
        mappings = {
            list = {
                { key = "s", cb = tree_cb("vsplit") },
                { key = "v", cb = tree_cb("split") },
                { key = "<C-s>", cb = tree_cb("system_open") },
            },
        },
    }
})

