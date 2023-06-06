return {
    "Shatur/neovim-ayu", lazy=false, priority=1000,
    mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
    
    -- set default colorscheme
    init = function()
        vim.opt.background = "dark" -- set background
        vim.cmd.colorscheme("ayu-mirage") -- set colorscheme
    end
}