{ pkgs, ... }:

{
  imports = [
    ./gh-aliases.nix
    ./git-aliases.nix
  ];

  programs.git = {
    enable = true;
    extraConfig = {
      diff.colorMoved = "default";
      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;
    };

    ignores = [
      ".DS_Store"
      ".vscode"
    ];

    # userEmail = config.home.user-info.email;
    # userName = config.home.user-info.fullName;

    # Enhanced diffs
    delta = {
      enable = true;
      options = {
        line-numbers = true;
        side-by-side = true;
        navigate = true;
      };
    };
  };

  # GitHub CLI
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.gh.enable
  # Aliases config in ./gh-aliases.nix
  programs.gh = {
    enable = true;
    settings = {
      #  git_protocol = "ssh";
      git_protocol = "https";
      prompt = true;
      editor = "${pkgs.neovim}/bin/nvim";
    };
  };
}
