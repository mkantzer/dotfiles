{ pkgs, ... }:
{
  home.sessionVariables.EDITOR = "nvim";

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraConfig = builtins.readFile ./init.vim;
    withRuby = false;
    withPython3 = false;

    plugins = with pkgs.vimPlugins; [
      onedark-vim

      comment-nvim
      vim-closer
      editorconfig-nvim
      vim-trailing-whitespace
      telescope-nvim
      telescope-fzf-native-nvim
      telescope-ui-select-nvim

      nvim-treesitter

      vim-gitgutter

      plantuml-syntax
      vim-markdown
      vim-nix
      vim-toml
      kotlin-vim
      pgsql-vim
      vim-terraform
      vim-cue
      vim-fish
      vim-go

      {
        plugin = lualine-nvim;
        type = "lua";
        config = "require('lualine').setup()";
      }
    ];
  };
}
