-- 自动安装packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- require('packer').init({
--   git = {
--       default_url_format = 'git@github.com:%s'
--   }
-- })
-- 保存此文件自动更新安装软件
-- 注意PackerCompile改成了PackerSync
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end 
]])

return require('packer').startup({function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'                                 -- 主题
  use "rebelot/kanagawa.nvim"
  use 'nvim-tree/nvim-web-devicons'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- 文档树
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      -- 文档树图标
      'nvim-tree/nvim-web-devicons'
    }
  }

  -- 用ctl-hjkl来定位窗口
  use "christoomey/vim-tmux-navigator"

  -- 语法高亮
  use { "nvim-treesitter/nvim-treesitter", run = ':TSUpdate' }
  -- 配合treesitter，不同括号颜色区分
  use "p00f/nvim-ts-rainbow"

  -- gcc和gc注释
  use "numToStr/Comment.nvim"

  -- 自动补全括号
  use "windwp/nvim-autopairs"

  -- buffer分割线
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- 左则git提示
  use "lewis6991/gitsigns.nvim"

  -- COC
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- Common Util
  use "nvim-lua/plenary.nvim"

  use {
    -- 文件检索
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use "lukas-reineke/indent-blankline.nvim"

  -- Show colors
  use({
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" })
    end,
  })

  -- Termianl
  use({
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("plugins.toggleterm")
    end,
  })

  -- Background Transparent
  use({
    "xiyaowong/nvim-transparent",
    config = function()
      require("transparent").setup({
        extra_groups = {
          "BufferLineTabClose",
          "BufferLineBufferSelcted",
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineSeparator",
          "BufferLineIndicatorSelected"
        },
        exculde = {}
      })
    end
  })

  use 'tpope/vim-surround'
  use 'junegunn/goyo.vim'

  -- Chromium use nvim
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end 
  }

  -- 平滑滚动
  -- use 'karb94/neoscroll.nvim'

  -- diffview
  -- use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  -- use { "ntk148v/habamax.nvim", requires={ "rktjmp/lush.nvim" } }

  if packer_bootstrap then
    require('packer').sync()
  end
end, config = {
  display = {
    open_fn = function()
      return require('packer.util').float({border = 'single'})
    end
  }
}})
