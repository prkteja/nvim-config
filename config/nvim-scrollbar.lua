require("scrollbar").setup({
    show = true,
    handle = {
        text = " ",
        color = colors.scrollbar,
        hide_if_all_visible = true, -- Hides handle if all lines are visible
    },
    marks = {
        Search = { text = { "-", "=" }, priority = 0, color = colors.orange },
        Error =  { text = { "-", "=" }, priority = 1, color = colors.red },
        Warn =   { text = { "-", "=" }, priority = 2, color = colors.yellow },
        Info =   { text = { "-", "=" }, priority = 3, color = colors.blue },
        Hint =   { text = { "-", "=" }, priority = 4, color = colors.green },
        Misc =   { text = { "-", "=" }, priority = 5, color = colors.purple },
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
