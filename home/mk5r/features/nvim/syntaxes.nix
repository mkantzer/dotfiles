{ pkgs, ... }: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
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
  ];
}
