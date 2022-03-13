require("scrollbar").setup({
    show = true,
    handle = {
        text = " ",
        color = colors.selection,
        hide_if_all_visible = true, -- Hides handle if all lines are visible
    },
    marks = {
        Search = { text = { "_", "=" }, priority = 0, color = colors.orange },
        Error =  { text = { "_", "=" }, priority = 1, color = colors.red },
        Warn =   { text = { "_", "=" }, priority = 2, color = colors.yellow },
        Info =   { text = { "_", "=" }, priority = 3, color = colors.blue },
        Hint =   { text = { "_", "=" }, priority = 4, color = colors.green },
        Misc =   { text = { "_", "=" }, priority = 5, color = colors.purple },
    },
    excluded_filetypes = {
        "prompt",
        "TelescopePrompt",
    },
    excluded_buftypes = {
        "terminal"
    },
    autocmd = {
        render = {
            "BufWinEnter",
            "TabEnter",
            "TermEnter",
            "WinEnter",
            "CmdwinLeave",
            "TextChanged",
            "VimResized",
            "WinScrolled",
        },
    },
    handlers = {
        diagnostic = true,
        search = false, -- Requires hlslens to be loaded
    },
})
