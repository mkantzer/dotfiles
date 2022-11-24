{ pkgs, ... }:

{
  home.sessionVariables.EDITOR = "nvim";

  programs.neovim = {
    enable = true;
    # coc.enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    #  extraConfig = ''
    #     syntax on 
    #     " --- visual ---
    #     colorscheme onedark
    #     let g:lightline = {
    #         \ 'colorscheme': 'onedark',
    #         \ }
    #     set background=dark

    #     set termguicolors
    #     set number
    #     set noruler
    #     set wrap
    #     set showmatch
    #     set matchtime=3
    #     set list
    #     highlight Comment cterm=italic gui=italic
    #     set nofoldenable
    #     let g:vim_markdown_frontmatter = 1
    #     let g:vim_markdown_strikethrough = 1
    #     " --- grep ---
    #     set ignorecase
    #     set smartcase
    #     set wrapscan
    #     set hlsearch
    #     set incsearch
    #     " --- indent ---
    #     set smartindent
    #     set expandtab
    #     " --- keymap ---
    #     " jk as esc
    #     inoremap <silent> jk <Esc>
    #   '';

    plugins = with pkgs.vimPlugins; [
      onedark-vim

      comment-nvim
      vim-closer
      editorconfig-nvim
      vim-trailing-whitespace
      telescope-nvim
      telescope-fzf-native-nvim
      telescope-ui-select-nvim


      nvim-treesitter.withAllGrammars
      nvim-treesitter-refactor
      vim-nix
      vim-cue
      vim-markdown
      vim-fish
      vim-go







      (nvim-treesitter.withPlugins (plugins: pkgs.tree-sitter.allGrammars))

      # coc-nvim
      # nvim-lspconfig

      vim-gitgutter
      nvim-tree-lua
      # toggleterm-nvim

      bufferline-nvim
      # nvim-web-devicons

      # markdown-preview-nvim
      # nvim-colorizer-lua #vim-hexokinase
    ];


    # extraConfig = builtins.readFile ./init.vim;
  };
}

