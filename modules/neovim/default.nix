{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;

    plugins = with pkgs.vimPlugins; [
      vim-nix
      vim-cue
      vim-markdown

      auto-pairs

      vim-gitgutter
      nvim-tree-lua
      toggleterm-nvim

      lualine-nvim
      bufferline-nvim
      nvim-web-devicons

      markdown-preview-nvim
      nvim-colorizer-lua #vim-hexokinase
    ];

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraConfig = builtins.readFile ./init.vim;
  };
}
