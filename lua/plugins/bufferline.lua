return {
  'akinsho/bufferline.nvim',
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("bufferline").setup {}
  end,
}                                                                                                      
