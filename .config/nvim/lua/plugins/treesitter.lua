require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "asm",
        "bash",
        "c",
        "css",
        "diff",
        "html",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "objdump",
        "python",
        "rust",
        "sql",
        "vim",
        "vimdoc",
    },

    sync_install = false,
    auto_install = false,

    highlight = { 
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = { enable = true },  
})
