require("kali")


-- transparent background
function ColorMyPencils(color)
    -- color = color or 'gruvbox-material'
    -- vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        ColorMyPencils()
    end
})

