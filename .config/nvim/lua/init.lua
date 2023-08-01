vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'BurntSushi/ripgrep'
    use 'nvim-telescope/telescope.nvim'
end)
