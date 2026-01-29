{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  home.sessionVariables.EDITOR = "nvim";

  programs.neovim = {
    enable = true;
    # coc.enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraConfig = builtins.readFile ./init.vim;

    plugins = with pkgs.vimPlugins; [
      onedark-vim
      # onedarkpro-nvim

      comment-nvim
      vim-closer
      editorconfig-nvim
      vim-trailing-whitespace
      telescope-nvim
      telescope-fzf-native-nvim
      telescope-ui-select-nvim

      # nvim-treesitter.withAllGrammars
      nvim-treesitter-refactor

      vim-gitgutter

      # syntaxes
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

      # bufferline-nvim
      # lightline-vim
      {
        plugin = lualine-nvim;
        config = ''
          lua << END
          require('lualine').setup()
          END
        '';
      }
    ];
  };
}
