{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    plugins = [
      {
        name = "tide";
        src = pkgs.fetchFromGitHub {
          owner = "IlanCosman";
          repo = "tide";
          rev = "v5.5.1";
          sha256 = "/r+vaJIQ+yi7YDN7AThRKWDimdDuVmeYcg7t0GzebZE=";
        };
      }
      {
        name = "fzf.fish";
        src = pkgs.fetchFromGitHub {
          owner = "PatrickF1";
          repo = "fzf.fish";
          rev = "v9.4";
          sha256 = "11fs3wihjid0k4bdllac8d1sah31z5hdl8g58sbr0302p7mgzyif";
        };
      }
    ];

    functions = { };

    shellAliases = with pkgs; {
      # fishy nix-shell
      nix-fish = "nix-shell --command ${fish}";

      # Nix related
      drb = "darwin-rebuild build  --flake ~/.config/dotfiles";
      nrb = "nixos-rebuild  build  --flake ~/.config/dotfiles";
      hmb = "home-manager   build  --flake ~/.config/dotfiles";
      drs = "darwin-rebuild switch --flake ~/.config/dotfiles";
      nrs = "nixos-rebuild  switch --flake ~/.config/dotfiles";
      hms = "home-manager   switch --flake ~/.config/dotfiles";
      cdot = "cd ~/.config/dotfiles";
      flakeup = "nix flake update ~/.config/dotfiles";
      nb = "nix build";
      nd = "nix develop";
      nf = "nix flake";
      nr = "nix run";
      ns = "nix search";
      nso = "nix store optimise";

      # Other
      ".." = "cd ..";
      ":q" = "exit";
      cat = "${bat}/bin/bat";
      du = "${du-dust}/bin/dust";
      g = "${gitAndTools.git}/bin/git";
      la = "ll -a";
      ll = "ls -l --time-style long-iso --icons";
      ls = "${exa}/bin/exa";
      tb = "toggle-background";
      gitroot = "cd $(g rev-parse --show-toplevel)";

      # Kubernetes Stuff
      kc = "kubectl";
      kx = "kubectx";
      kn = "kubens";

      # Terraform Stuff
      tf = "terraform";
      tfw = "terraform workspace";
      tfws = "terraform workspace select";
      tfwl = "terraform workspace list";
      tg = "terragrunt";

      "aws-p" = "export AWS_PROFILE=personal-admin";

      # Work aliases:
      # "d-sso" = "aws sso login --profile meta";
      # "d-oprod" = "export AWS_PROFILE=old-prod";
      # "d-devclusters" = "export AWS_PROFILE=dev-clusters";
      # "d-prodclusters" = "export AWS_PROFILE=prod-clusters";
      # "d-registry" = "export AWS_PROFILE=registry";
    };

    # Configuration that should be above `loginShellInit` and `interactiveShellInit`.
    # For loop needed to address bug where $PATH is not properly set for fish:
    # https://github.com/LnL7/nix-darwin/issues/122
    shellInit = ''
      for p in /run/current-system/sw/bin
        if not contains $p $fish_user_paths
          set -g fish_user_paths $p $fish_user_paths
        end
      end

      fish_add_path /usr/local/bin

      fish_add_path --prepend --move /nix/var/nix/profiles/default/bin
      fish_add_path --prepend --move /etc/profiles/per-user/(whoami)/bin
      fish_add_path --prepend --move /Users/(whoami)/.nix-profile/bin
      fish_add_path --prepend --move '/Applications/Visual Studio Code.app/Contents/Resources/app/bin'
      fish_add_path /users/(whoami)/.krew/bin
    '';

    loginShellInit = ''
    '';

    interactiveShellInit = ''
      set -g fish_greeting ""
      ${pkgs.thefuck}/bin/thefuck --alias | source

      # Tide Configuration
      # https://github.com/IlanCosman/tide/issues/304
      echo 2 1 3 2 3 3 1 2 2 1 2 1 1 y | tide configure >/dev/null

      # Don't have extra delete's exit shell
      # https://github.com/fish-shell/fish-shell/issues/5593#issuecomment-458242921
      bind --erase --preset \cd
      bind \cd delete-char
    '';
  };
}
